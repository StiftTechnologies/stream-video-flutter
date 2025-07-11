// ignore_for_file: comment_references

import '../../open_api/video/coordinator/api.dart' as open;
import '../models/call_cid.dart';
import '../models/call_metadata.dart';
import '../models/call_permission.dart';
import '../models/call_reaction.dart';
import '../models/call_received_created_data.dart';
import '../models/call_received_data.dart';
import '../models/call_settings.dart';
import '../models/guest_created_data.dart';
import '../models/push_device.dart';
import '../models/push_provider.dart';
import '../models/queried_calls.dart';
import '../models/queried_members.dart';
import '../models/user_info.dart';
import '../shared_emitter.dart';
import '../utils/none.dart';
import '../utils/result.dart';
import 'models/coordinator_events.dart';
import 'models/coordinator_models.dart' as models;

abstract class CoordinatorClient {
  bool get isConnected;
  SharedEmitter<CoordinatorEvent> get events;

  Future<Result<None>> connectUser(
    UserInfo user, {
    bool includeUserDetails = false,
  });

  Future<Result<None>> openConnection();

  Future<Result<None>> closeConnection();

  Future<Result<None>> disconnectUser();

  Future<Result<None>> collectUserFeedback({
    required String callType,
    required String callId,
    required String sessionId,
    required int rating,
    required String sdk,
    required String sdkVersion,
    required String userSessionId,
    String? reason,
    Map<String, Object>? custom,
  });

  Future<Result<None>> createDevice({
    required String id,
    required PushProvider pushProvider,
    String? pushProviderName,
    bool? voipToken,
  });

  Future<Result<List<PushDevice>>> listDevices();

  Future<Result<None>> deleteDevice({
    required String id,
    String? userId,
  });

  Future<Result<CallReceivedData>> getCall({
    required StreamCallCid callCid,
    int? membersLimit,
    bool? ringing,
    bool? notify,
    bool? video,
  });

  Future<Result<CallReceivedOrCreatedData>> getOrCreateCall({
    required StreamCallCid callCid,
    bool? ringing,
    List<open.MemberRequest>? members,
    String? team,
    bool? notify,
    bool? video,
    DateTime? startsAt,
    int? membersLimit,
    open.CallSettingsRequest? settingsOverride,
    Map<String, Object> custom = const {},
  });

  Future<Result<models.CoordinatorJoined>> joinCall({
    required StreamCallCid callCid,
    bool? ringing,
    bool? create,
    String? migratingFrom,
    bool? video,
    int? membersLimit,
  });

  Future<Result<None>> acceptCall({required StreamCallCid cid});

  Future<Result<None>> rejectCall({required StreamCallCid cid, String? reason});

  /// Sends a custom event to the API to notify if we've changed something
  /// in the state of the call.
  Future<Result<None>> sendCustomEvent({
    required StreamCallCid callCid,
    required String eventType,
    Map<String, Object> custom = const {},
  });

  Future<Result<None>> addMembers({
    required StreamCallCid callCid,
    required Iterable<open.MemberRequest> members,
  });

  Future<Result<None>> removeMembers({
    required StreamCallCid callCid,
    required Iterable<String> removeIds,
  });

  Future<Result<None>> updateCallMembers({
    required StreamCallCid callCid,
    Iterable<open.MemberRequest> updateMembers = const [],
    Iterable<String> removeIds = const [],
  });

  /// Sends a `call.permission_request` event to all users connected
  /// to the call. The call settings object contains information about
  /// which permissions can be requested during a call (for example a user
  /// might be allowed to request permission to publish audio, but not video).
  Future<Result<None>> requestPermissions({
    required StreamCallCid callCid,
    required List<CallPermission> permissions,
  });

  /// Allows you to grant or revoke a specific permission to a user in a call.
  /// The permissions are specific to the call experience and
  /// do not survive the call itself.
  ///
  /// When revoking a permission, this endpoint will also mute the relevant
  /// track from the user. This is similar to muting a user with the
  /// difference that the user will not be able to unmute afterwards.
  ///
  /// Supported permissions that can be granted or revoked:
  /// `send-audio`, `send-video` and `screenshare`.
  ///
  /// `call.permissions_updated` event is sent to all members of the call.
  Future<Result<None>> updateUserPermissions({
    required StreamCallCid callCid,
    required String userId,
    required List<CallPermission> grantPermissions,
    required List<CallPermission> revokePermissions,
  });

  /// Starts recording for the call described by the given [callCid].
  Future<Result<None>> startRecording(
    StreamCallCid callCid, {
    String? recordingExternalStorage,
  });

  /// Returns a list of recording for the associated [callCid] and [sessionId].
  Future<Result<List<open.CallRecording>>> listRecordings(
    StreamCallCid callCid,
  );

  /// Stops recording for the call described by the given [callCid].
  Future<Result<None>> stopRecording(StreamCallCid callCid);

  /// Starts transcription for the call described by the given [callCid].
  Future<Result<None>> startTranscription(
    StreamCallCid callCid, {
    bool? enableClosedCaptions,
    TranscriptionSettingsLanguage? language,
    String? transcriptionExternalStorage,
  });

  Future<Result<List<open.CallTranscription>>> listTranscriptions(
    StreamCallCid callCid,
  );

  /// Stops transcription for the call described by the given [callCid].
  Future<Result<None>> stopTranscription(StreamCallCid callCid);

  Future<Result<None>> startClosedCaptions(
    StreamCallCid callCid, {
    bool? enableTranscription,
    TranscriptionSettingsLanguage? language,
    String? transcriptionExternalStorage,
  });

  Future<Result<None>> stopClosedCaptions(StreamCallCid callCid);

  /// Starts broadcasting for the call described by the given [callCid].
  Future<Result<String?>> startBroadcasting(StreamCallCid callCid);

  /// Stops broadcasting for the call described by the given [callCid].
  Future<Result<None>> stopBroadcasting(StreamCallCid callCid);

  Future<Result<CallReaction>> sendReaction({
    required StreamCallCid callCid,
    required String reactionType,
    String? emojiCode,
    Map<String, Object> custom = const {},
  });

  /// Queries the API for members of a call.
  Future<Result<QueriedMembers>> queryMembers({
    required StreamCallCid callCid,
    required Map<String, Object> filterConditions,
    String? next,
    String? prev,
    List<open.SortParamRequest> sorts = const [],
    int? limit,
  });

  Future<Result<QueriedCalls>> queryCalls({
    required Map<String, Object> filterConditions,
    String? next,
    String? prev,
    List<open.SortParamRequest> sorts = const [],
    int? limit,
    bool? watch,
  });

  Future<Result<None>> blockUser({
    required StreamCallCid callCid,
    required String userId,
  });

  Future<Result<None>> unblockUser({
    required StreamCallCid callCid,
    required String userId,
  });

  /// Signals other users that I have cancelled my call to them before
  /// they accepted it.
  /// Causes the [CoordinatorCallEndedEvent] event to be emitted
  /// to all the call members.
  ///
  /// Cancelling a call is only possible before the local participant
  /// joined the call.
  Future<Result<None>> endCall(StreamCallCid callCid);

  Future<Result<CallMetadata>> goLive({
    required StreamCallCid callCid,
    bool? startHls,
    bool? startRecording,
    bool? startTranscription,
    bool? startClosedCaption,
    String? transcriptionStorageName,
  });

  Future<Result<CallMetadata>> stopLive(StreamCallCid callCid);

  Future<Result<None>> muteUsers({
    required StreamCallCid callCid,
    required List<String> userIds,
    bool? muteAllUsers,
    bool? audio,
    bool? video,
    bool? screenshare,
  });

  Future<Result<CallMetadata>> updateCall({
    required StreamCallCid callCid,
    Map<String, Object> custom = const {},
    DateTime? startsAt,
    StreamRingSettings? ring,
    StreamAudioSettings? audio,
    StreamVideoSettings? video,
    StreamScreenShareSettings? screenShare,
    StreamRecordingSettings? recording,
    StreamTranscriptionSettings? transcription,
    StreamBackstageSettings? backstage,
    StreamGeofencingSettings? geofencing,
    StreamLimitsSettings? limits,
    StreamBroadcastingSettings? broadcasting,
    StreamSessionSettings? session,
    StreamFrameRecordingSettings? frameRecording,
  });

  Future<Result<GuestCreatedData>> loadGuest({
    required String id,
    String? name,
    String? image,
    Map<String, Object> custom = const {},
  });

  Future<Result<None>> videoPin({
    required StreamCallCid callCid,
    required String sessionId,
    required String userId,
  });

  Future<Result<None>> videoUnpin({
    required StreamCallCid callCid,
    required String sessionId,
    required String userId,
  });
}
