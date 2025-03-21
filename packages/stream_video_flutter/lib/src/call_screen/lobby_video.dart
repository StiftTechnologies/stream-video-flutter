import 'dart:async';

import 'package:flutter/material.dart';

import '../../stream_video_flutter.dart';
import '../call_participants/participant_label.dart';

/// A widget that can be shown before joining a call. Measures latencies
/// and selects the best SFU. This speeds up the process of joining when
/// the user decides to enter the call.
class StreamLobbyVideo extends StatefulWidget {
  /// Creates a new instance of [StreamLobbyView].
  const StreamLobbyVideo({
    super.key,
    required this.call,
    this.cardBackgroundColor,
    this.userAvatarTheme,
    this.onMicrophoneTrackSet,
    this.onCameraTrackSet,
    this.streamVideo,
  });

  /// Represents a call.
  final Call call;

  /// The color of the focus border.
  final Color? cardBackgroundColor;

  /// Theme for the avatar.
  final StreamUserAvatarThemeData? userAvatarTheme;

  final FutureOr<void> Function(RtcLocalAudioTrack?)? onMicrophoneTrackSet;
  final FutureOr<void> Function(RtcLocalCameraTrack?)? onCameraTrackSet;

  /// An instance of [StreamVideo].
  ///
  /// If not provided, it will be obtained via StreamVideo.instance
  final StreamVideo? streamVideo;

  @override
  State<StreamLobbyVideo> createState() => _StreamLobbyVideoState();
}

class _StreamLobbyVideoState extends State<StreamLobbyVideo> {
  late final _logger = taggedLogger(tag: 'SV:LobbyView');

  RtcLocalAudioTrack? _microphoneTrack;
  RtcLocalCameraTrack? _cameraTrack;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      final callSettings = widget.call.state.value.settings;
      if (callSettings.audio.micDefaultOn) {
        toggleMicrophone();
      }

      if (callSettings.video.cameraDefaultOn) {
        toggleCamera();
      }
    });
  }

  Future<void> toggleCamera() async {
    if (_cameraTrack != null) {
      await _cameraTrack?.stop();
      await widget.onCameraTrackSet?.call(null);

      return setState(() => _cameraTrack = null);
    }

    try {
      final cameraTrack = await RtcLocalTrack.camera();
      await widget.onCameraTrackSet?.call(cameraTrack);

      return setState(() => _cameraTrack = cameraTrack);
    } catch (e) {
      _logger.w(() => 'Error creating camera track: $e');
    }
  }

  Future<void> toggleMicrophone() async {
    if (_microphoneTrack != null) {
      await _microphoneTrack?.stop();
      await widget.onMicrophoneTrackSet?.call(null);

      return setState(() => _microphoneTrack = null);
    }

    try {
      final microphoneTrack = await RtcLocalTrack.audio();
      await widget.onMicrophoneTrackSet?.call(microphoneTrack);

      return setState(() => _microphoneTrack = microphoneTrack);
    } catch (e) {
      _logger.w(() => 'Error creating microphone track: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = StreamLobbyViewTheme.of(context);
    final cardBackgroundColor =
        widget.cardBackgroundColor ?? theme.cardBackgroundColor;
    final userAvatarTheme = widget.userAvatarTheme ?? theme.userAvatarTheme;

    final currentUser =
        (widget.streamVideo ?? StreamVideo.instance).currentUser;

    final cameraEnabled = _cameraTrack != null;
    final microphoneEnabled = _microphoneTrack != null;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 420),
      child: Column(
        children: [
          SizedBox(
            height: 280,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: DecoratedBox(
                decoration: BoxDecoration(color: cardBackgroundColor),
                child: Builder(
                  builder: (context) {
                    Widget placeHolderBuilder(BuildContext context) {
                      return Center(
                        child: StreamUserAvatarTheme(
                          data: userAvatarTheme,
                          child: StreamUserAvatar(
                            user: currentUser,
                          ),
                        ),
                      );
                    }

                    return Stack(
                      children: [
                        if (cameraEnabled)
                          VideoTrackRenderer(
                            mirror: true,
                            videoTrack: _cameraTrack!,
                            placeholderBuilder: placeHolderBuilder,
                          )
                        else
                          placeHolderBuilder(context),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              StreamParticipantLabel(
                                isAudioEnabled: microphoneEnabled,
                                isSpeaking: false,
                                participantName: currentUser.name,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CallControlOption(
                icon: microphoneEnabled
                    ? const Icon(Icons.mic_rounded)
                    : const Icon(Icons.mic_off_rounded),
                iconColor: microphoneEnabled ? null : theme.optionOffIconColor,
                backgroundColor:
                    microphoneEnabled ? null : theme.optionOffBackgroundColor,
                onPressed: toggleMicrophone,
              ),
              CallControlOption(
                icon: cameraEnabled
                    ? const Icon(Icons.videocam_rounded)
                    : const Icon(Icons.videocam_off_rounded),
                iconColor: cameraEnabled ? null : theme.optionOffIconColor,
                backgroundColor:
                    cameraEnabled ? null : theme.optionOffBackgroundColor,
                onPressed: toggleCamera,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
