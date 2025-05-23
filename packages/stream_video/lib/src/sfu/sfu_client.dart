import 'package:tart/tart.dart';
import 'package:uuid/uuid.dart';

import '../../globals.dart';
import '../../protobuf/video/sfu/models/models.pb.dart' as sfu_models;
import '../../protobuf/video/sfu/signal_rpc/signal.pb.dart' as sfu;
import '../../protobuf/video/sfu/signal_rpc/signal.pbtwirp.dart'
    as signal_twirp;
import '../errors/video_error_composer.dart';
import '../logger/impl/tagged_logger.dart';
import '../utils/result.dart';

class SfuClient {
  SfuClient({
    required String baseUrl,
    required this.sfuToken,
    String prefix = '',
    ClientHooks? hooks,
    List<Interceptor> interceptors = const [],
  }) : _client = signal_twirp.SignalServerProtobufClient(
          baseUrl,
          prefix,
          hooks: hooks,
          interceptor: chainInterceptor(interceptors),
        );

  final _logger = taggedLogger(tag: 'SV:SfuClient');

  final String sfuToken;

  final signal_twirp.SignalServer _client;

  Future<Result<sfu.SendAnswerResponse>> sendAnswer(
    sfu.SendAnswerRequest request,
  ) async {
    try {
      final response = await _client.sendAnswer(_withAuthHeaders(), request);
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.ICETrickleResponse>> sendIceCandidate(
    sfu_models.ICETrickle request,
  ) async {
    try {
      final response = await _client.iceTrickle(_withAuthHeaders(), request);
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.ICERestartResponse>> restartIce(
    sfu.ICERestartRequest request,
  ) async {
    try {
      final response = await _client.iceRestart(_withAuthHeaders(), request);
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.SetPublisherResponse>> setPublisher(
    sfu.SetPublisherRequest request,
  ) async {
    try {
      _logger.v(() => '[setPublisher] request: ${request.stringify()}');
      final response = await _client.setPublisher(_withAuthHeaders(), request);
      _logger.v(() => '[setPublisher] response: ${response.stringify()}');
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.UpdateMuteStatesResponse>> updateMuteState(
    sfu.UpdateMuteStatesRequest request,
  ) async {
    try {
      _logger.v(() => '[updateMuteState] request: $request');
      final response = await _client.updateMuteStates(
        _withAuthHeaders(),
        request,
      );
      _logger.v(() => '[updateMuteState] response: $response');
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.UpdateSubscriptionsResponse>> updateSubscriptions(
    sfu.UpdateSubscriptionsRequest request,
  ) async {
    try {
      _logger.v(() => '[updateSubscriptions] request: $request');
      final response = await _client.updateSubscriptions(
        _withAuthHeaders(),
        request,
      );
      _logger.v(() => '[updateSubscriptions] response: $response');
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.StartNoiseCancellationResponse>> startNoiseCancellation(
    sfu.StartNoiseCancellationRequest request,
  ) async {
    try {
      _logger.v(() => '[startNoiseCancellation] request: $request');
      final response = await _client.startNoiseCancellation(
        _withAuthHeaders(),
        request,
      );
      _logger.v(() => '[startNoiseCancellation] response: $response');
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Future<Result<sfu.StopNoiseCancellationResponse>> stopNoiseCancellation(
    sfu.StopNoiseCancellationRequest request,
  ) async {
    try {
      _logger.v(() => '[stopNoiseCancellation] request: $request');
      final response = await _client.stopNoiseCancellation(
        _withAuthHeaders(),
        request,
      );
      _logger.v(() => '[stopNoiseCancellation] response: $response');
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }

  Context _withAuthHeaders([Context? ctx]) {
    ctx ??= Context();
    return withHttpRequestHeaders(ctx, {
      'Authorization': 'Bearer $sfuToken',
      'X-Stream-Client': xStreamClientHeader,
      'x-client-request-id': const Uuid().v4(),
    });
  }

  Future<Result<sfu.SendStatsResponse>> sendStats(
    sfu.SendStatsRequest request,
  ) async {
    try {
      final response = await _client.sendStats(_withAuthHeaders(), request);
      return Result.success(response);
    } catch (e, stk) {
      return Result.failure(VideoErrors.compose(e, stk));
    }
  }
}

extension on sfu.SetPublisherRequest {
  String stringify() {
    return 'SetPublisherRequest(sessionId: $sessionId, tracks: $tracks, '
        'sdp: $sdp)';
  }
}

extension on sfu.SetPublisherResponse {
  String stringify() {
    return 'SetPublisherResponse(sessionId: $sessionId, '
        'iceRestart: $iceRestart, error: $error, sdp: $sdp)';
  }
}
