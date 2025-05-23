import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:stream_webrtc_flutter/stream_webrtc_flutter.dart' as rtc;

import '../../logger/stream_log.dart';
import '../../sfu/data/models/sfu_track_type.dart';
import '../model/rtc_video_dimension.dart';

export 'rtc_local_track.dart';
export 'rtc_remote_track.dart';

@immutable
abstract class RtcTrack {
  const RtcTrack({
    required this.trackIdPrefix,
    required this.trackType,
    required this.mediaStream,
    required this.mediaTrack,
    this.videoDimension,
  });

  final String trackIdPrefix;
  final SfuTrackType trackType;
  final rtc.MediaStream mediaStream;
  final rtc.MediaStreamTrack mediaTrack;

  /// The video dimension of the track in case it is a video track.
  final RtcVideoDimension? videoDimension;

  String get trackId => '$trackIdPrefix:$trackType';

  bool get isVideoTrack {
    return trackType == SfuTrackType.video ||
        trackType == SfuTrackType.screenShare;
  }

  bool get isAudioTrack =>
      trackType == SfuTrackType.audio ||
      trackType == SfuTrackType.screenShareAudio;

  void enable() {
    // Return if the track is already enabled.
    if (mediaTrack.enabled) return;

    streamLog.i('SV:RtcTrack', () => 'Enabling track $trackId');
    try {
      mediaTrack.enabled = true;
    } catch (_) {
      streamLog.w('SV:RtcTrack', () => 'Failed to enable track $trackId');
    }
  }

  void disable() {
    // Return if the track is already disabled.
    if (!mediaTrack.enabled) return;

    streamLog.i('SV:RtcTrack', () => 'Disabling track $trackId');
    try {
      mediaTrack.enabled = false;
    } catch (_) {
      streamLog.w('SV:RtcTrack', () => 'Failed to disable track $trackId');
    }
  }

  Future<ByteBuffer?> captureScreenshot() async {
    if (isVideoTrack) {
      return mediaStream.getVideoTracks().first.captureFrame();
    }

    return null;
  }

  Future<void> start();

  Future<void> stop();

  RtcTrack copyWith();
}
