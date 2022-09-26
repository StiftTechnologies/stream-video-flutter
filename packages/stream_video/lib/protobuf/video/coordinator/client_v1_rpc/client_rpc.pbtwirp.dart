// Code generated by protoc-gen-flutter-twirp. DO NOT EDIT. video/coordinator/client_v1_rpc/client_rpc

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:tart/tart.dart' as twirp;
import 'client_rpc.pb.dart';
import 'package:stream_video/protobuf/google/protobuf/struct.pb.dart';
import 'package:stream_video/protobuf/video/coordinator/call_v1/call.pb.dart';
import 'package:stream_video/protobuf/video/coordinator/client_v1_rpc/envelopes.pb.dart';
import 'package:stream_video/protobuf/video/coordinator/edge_v1/edge.pb.dart';
import 'package:stream_video/protobuf/video/coordinator/push_v1/push.pb.dart';
import 'package:stream_video/protobuf/video/coordinator/utils_v1/utils.pb.dart';



abstract class ClientRPC {
  //  rpc GetCall(GetCallRequest) returns (GetCallResponse);
  Future<CreateCallResponse> createCall(twirp.Context ctx, CreateCallRequest req);
  
  Future<GetOrCreateCallResponse> getOrCreateCall(twirp.Context ctx, GetOrCreateCallRequest req);
  // JoinCall acts as GetOrCreateCall, but additionally returns list of datacenters to measure latency
  Future<JoinCallResponse> joinCall(twirp.Context ctx, JoinCallRequest req);
  // GetCallSFU returns SFU information that is required to establish a connection
  Future<GetCallEdgeServerResponse> getCallEdgeServer(twirp.Context ctx, GetCallEdgeServerRequest req);
  
  Future<UpdateCallResponse> updateCall(twirp.Context ctx, UpdateCallRequest req);
  
  Future<QueryCallsResponse> queryCalls(twirp.Context ctx, QueryCallsRequest req);
  // QueryMembers gets a list of members that match your query criteria
  Future<QueryMembersResponse> queryMembers(twirp.Context ctx, QueryMembersRequest req);
  
  Future<CreateDeviceResponse> createDevice(twirp.Context ctx, CreateDeviceRequest req);
  
  Future<DeleteDeviceResponse> deleteDevice(twirp.Context ctx, DeleteDeviceRequest req);
  
  Future<QueryDevicesResponse> queryDevices(twirp.Context ctx, QueryDevicesRequest req);
  // UpdateMembers creates or updates members in a room.// If a member is not found, It will be created.// TODO: response with room data
  Future<UpdateCallMembersResponse> updateCallMembers(twirp.Context ctx, UpdateCallMembersRequest req);
  // DeleteMembers deletes members from a room.// TODO: response with room data
  Future<DeleteCallMembersResponse> deleteCallMembers(twirp.Context ctx, DeleteCallMembersRequest req);
  
  Future<SendCustomEventResponse> sendCustomEvent(twirp.Context ctx, SendCustomEventRequest req);
  // endpoint for storing stats (perhaps we should move this to the SFU layer though)
  Future<ReportCallStatsResponse> reportCallStats(twirp.Context ctx, ReportCallStatsRequest req);
  // endpoint for reviewing/rating the quality of calls
  Future<ReviewCallResponse> reviewCall(twirp.Context ctx, ReviewCallRequest req);
  // endpoint for users to report issues with a call
  Future<ReportIssueResponse> reportIssue(twirp.Context ctx, ReportIssueRequest req);
}


class ClientRPCJSONClient implements ClientRPC {
  String baseUrl;
  String prefix;
  late twirp.ClientHooks hooks;
  late twirp.Interceptor interceptor;

  ClientRPCJSONClient(this.baseUrl, this.prefix, {twirp.ClientHooks? hooks, twirp.Interceptor? interceptor}) {
    if (!baseUrl.endsWith('/')) baseUrl += '/';
    if (!prefix.endsWith('/')) prefix += '/';
    if (prefix.startsWith('/')) prefix = prefix.substring(1);

    this.hooks = hooks ?? twirp.ClientHooks();
    this.interceptor = interceptor ?? twirp.chainInterceptor([]);
  }

  @override
  Future<CreateCallResponse> createCall(twirp.Context ctx, CreateCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'CreateCall');
    return interceptor((ctx, req) {
      return callCreateCall(ctx, req);
    })(ctx, req);
  }

  Future<CreateCallResponse> callCreateCall(twirp.Context ctx, CreateCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/CreateCall');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final CreateCallResponse res = CreateCallResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetOrCreateCallResponse> getOrCreateCall(twirp.Context ctx, GetOrCreateCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'GetOrCreateCall');
    return interceptor((ctx, req) {
      return callGetOrCreateCall(ctx, req);
    })(ctx, req);
  }

  Future<GetOrCreateCallResponse> callGetOrCreateCall(twirp.Context ctx, GetOrCreateCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/GetOrCreateCall');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final GetOrCreateCallResponse res = GetOrCreateCallResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<JoinCallResponse> joinCall(twirp.Context ctx, JoinCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'JoinCall');
    return interceptor((ctx, req) {
      return callJoinCall(ctx, req);
    })(ctx, req);
  }

  Future<JoinCallResponse> callJoinCall(twirp.Context ctx, JoinCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/JoinCall');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final JoinCallResponse res = JoinCallResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetCallEdgeServerResponse> getCallEdgeServer(twirp.Context ctx, GetCallEdgeServerRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'GetCallEdgeServer');
    return interceptor((ctx, req) {
      return callGetCallEdgeServer(ctx, req);
    })(ctx, req);
  }

  Future<GetCallEdgeServerResponse> callGetCallEdgeServer(twirp.Context ctx, GetCallEdgeServerRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/GetCallEdgeServer');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final GetCallEdgeServerResponse res = GetCallEdgeServerResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateCallResponse> updateCall(twirp.Context ctx, UpdateCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'UpdateCall');
    return interceptor((ctx, req) {
      return callUpdateCall(ctx, req);
    })(ctx, req);
  }

  Future<UpdateCallResponse> callUpdateCall(twirp.Context ctx, UpdateCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/UpdateCall');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final UpdateCallResponse res = UpdateCallResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<QueryCallsResponse> queryCalls(twirp.Context ctx, QueryCallsRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'QueryCalls');
    return interceptor((ctx, req) {
      return callQueryCalls(ctx, req);
    })(ctx, req);
  }

  Future<QueryCallsResponse> callQueryCalls(twirp.Context ctx, QueryCallsRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/QueryCalls');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final QueryCallsResponse res = QueryCallsResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<QueryMembersResponse> queryMembers(twirp.Context ctx, QueryMembersRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'QueryMembers');
    return interceptor((ctx, req) {
      return callQueryMembers(ctx, req);
    })(ctx, req);
  }

  Future<QueryMembersResponse> callQueryMembers(twirp.Context ctx, QueryMembersRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/QueryMembers');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final QueryMembersResponse res = QueryMembersResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreateDeviceResponse> createDevice(twirp.Context ctx, CreateDeviceRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'CreateDevice');
    return interceptor((ctx, req) {
      return callCreateDevice(ctx, req);
    })(ctx, req);
  }

  Future<CreateDeviceResponse> callCreateDevice(twirp.Context ctx, CreateDeviceRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/CreateDevice');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final CreateDeviceResponse res = CreateDeviceResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DeleteDeviceResponse> deleteDevice(twirp.Context ctx, DeleteDeviceRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'DeleteDevice');
    return interceptor((ctx, req) {
      return callDeleteDevice(ctx, req);
    })(ctx, req);
  }

  Future<DeleteDeviceResponse> callDeleteDevice(twirp.Context ctx, DeleteDeviceRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/DeleteDevice');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final DeleteDeviceResponse res = DeleteDeviceResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<QueryDevicesResponse> queryDevices(twirp.Context ctx, QueryDevicesRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'QueryDevices');
    return interceptor((ctx, req) {
      return callQueryDevices(ctx, req);
    })(ctx, req);
  }

  Future<QueryDevicesResponse> callQueryDevices(twirp.Context ctx, QueryDevicesRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/QueryDevices');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final QueryDevicesResponse res = QueryDevicesResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateCallMembersResponse> updateCallMembers(twirp.Context ctx, UpdateCallMembersRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'UpdateCallMembers');
    return interceptor((ctx, req) {
      return callUpdateCallMembers(ctx, req);
    })(ctx, req);
  }

  Future<UpdateCallMembersResponse> callUpdateCallMembers(twirp.Context ctx, UpdateCallMembersRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/UpdateCallMembers');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final UpdateCallMembersResponse res = UpdateCallMembersResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DeleteCallMembersResponse> deleteCallMembers(twirp.Context ctx, DeleteCallMembersRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'DeleteCallMembers');
    return interceptor((ctx, req) {
      return callDeleteCallMembers(ctx, req);
    })(ctx, req);
  }

  Future<DeleteCallMembersResponse> callDeleteCallMembers(twirp.Context ctx, DeleteCallMembersRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/DeleteCallMembers');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final DeleteCallMembersResponse res = DeleteCallMembersResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SendCustomEventResponse> sendCustomEvent(twirp.Context ctx, SendCustomEventRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'SendCustomEvent');
    return interceptor((ctx, req) {
      return callSendCustomEvent(ctx, req);
    })(ctx, req);
  }

  Future<SendCustomEventResponse> callSendCustomEvent(twirp.Context ctx, SendCustomEventRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/SendCustomEvent');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final SendCustomEventResponse res = SendCustomEventResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReportCallStatsResponse> reportCallStats(twirp.Context ctx, ReportCallStatsRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'ReportCallStats');
    return interceptor((ctx, req) {
      return callReportCallStats(ctx, req);
    })(ctx, req);
  }

  Future<ReportCallStatsResponse> callReportCallStats(twirp.Context ctx, ReportCallStatsRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/ReportCallStats');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final ReportCallStatsResponse res = ReportCallStatsResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReviewCallResponse> reviewCall(twirp.Context ctx, ReviewCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'ReviewCall');
    return interceptor((ctx, req) {
      return callReviewCall(ctx, req);
    })(ctx, req);
  }

  Future<ReviewCallResponse> callReviewCall(twirp.Context ctx, ReviewCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/ReviewCall');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final ReviewCallResponse res = ReviewCallResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReportIssueResponse> reportIssue(twirp.Context ctx, ReportIssueRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'ReportIssue');
    return interceptor((ctx, req) {
      return callReportIssue(ctx, req);
    })(ctx, req);
  }

  Future<ReportIssueResponse> callReportIssue(twirp.Context ctx, ReportIssueRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/ReportIssue');
      final data = await doJSONRequest(ctx, url, hooks, req);
      final ReportIssueResponse res = ReportIssueResponse.create();
      res.mergeFromProto3Json(json.decode(data));
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }
}


class ClientRPCProtobufClient implements ClientRPC {
  String baseUrl;
  String prefix;
  late twirp.ClientHooks hooks;
  late twirp.Interceptor interceptor;

  ClientRPCProtobufClient(this.baseUrl, this.prefix, {twirp.ClientHooks? hooks, twirp.Interceptor? interceptor}) {
    if (!baseUrl.endsWith('/')) baseUrl += '/';
    if (!prefix.endsWith('/')) prefix += '/';
    if (prefix.startsWith('/')) prefix = prefix.substring(1);

    this.hooks = hooks ?? twirp.ClientHooks();
    this.interceptor = interceptor ?? twirp.chainInterceptor([]);
  }

  @override
  Future<CreateCallResponse> createCall(twirp.Context ctx, CreateCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'CreateCall');
    return interceptor((ctx, req) {
      return callCreateCall(ctx, req);
    })(ctx, req);
  }

  Future<CreateCallResponse> callCreateCall(twirp.Context ctx, CreateCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/CreateCall');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final CreateCallResponse res = CreateCallResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetOrCreateCallResponse> getOrCreateCall(twirp.Context ctx, GetOrCreateCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'GetOrCreateCall');
    return interceptor((ctx, req) {
      return callGetOrCreateCall(ctx, req);
    })(ctx, req);
  }

  Future<GetOrCreateCallResponse> callGetOrCreateCall(twirp.Context ctx, GetOrCreateCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/GetOrCreateCall');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final GetOrCreateCallResponse res = GetOrCreateCallResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<JoinCallResponse> joinCall(twirp.Context ctx, JoinCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'JoinCall');
    return interceptor((ctx, req) {
      return callJoinCall(ctx, req);
    })(ctx, req);
  }

  Future<JoinCallResponse> callJoinCall(twirp.Context ctx, JoinCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/JoinCall');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final JoinCallResponse res = JoinCallResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GetCallEdgeServerResponse> getCallEdgeServer(twirp.Context ctx, GetCallEdgeServerRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'GetCallEdgeServer');
    return interceptor((ctx, req) {
      return callGetCallEdgeServer(ctx, req);
    })(ctx, req);
  }

  Future<GetCallEdgeServerResponse> callGetCallEdgeServer(twirp.Context ctx, GetCallEdgeServerRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/GetCallEdgeServer');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final GetCallEdgeServerResponse res = GetCallEdgeServerResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateCallResponse> updateCall(twirp.Context ctx, UpdateCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'UpdateCall');
    return interceptor((ctx, req) {
      return callUpdateCall(ctx, req);
    })(ctx, req);
  }

  Future<UpdateCallResponse> callUpdateCall(twirp.Context ctx, UpdateCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/UpdateCall');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final UpdateCallResponse res = UpdateCallResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<QueryCallsResponse> queryCalls(twirp.Context ctx, QueryCallsRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'QueryCalls');
    return interceptor((ctx, req) {
      return callQueryCalls(ctx, req);
    })(ctx, req);
  }

  Future<QueryCallsResponse> callQueryCalls(twirp.Context ctx, QueryCallsRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/QueryCalls');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final QueryCallsResponse res = QueryCallsResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<QueryMembersResponse> queryMembers(twirp.Context ctx, QueryMembersRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'QueryMembers');
    return interceptor((ctx, req) {
      return callQueryMembers(ctx, req);
    })(ctx, req);
  }

  Future<QueryMembersResponse> callQueryMembers(twirp.Context ctx, QueryMembersRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/QueryMembers');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final QueryMembersResponse res = QueryMembersResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreateDeviceResponse> createDevice(twirp.Context ctx, CreateDeviceRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'CreateDevice');
    return interceptor((ctx, req) {
      return callCreateDevice(ctx, req);
    })(ctx, req);
  }

  Future<CreateDeviceResponse> callCreateDevice(twirp.Context ctx, CreateDeviceRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/CreateDevice');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final CreateDeviceResponse res = CreateDeviceResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DeleteDeviceResponse> deleteDevice(twirp.Context ctx, DeleteDeviceRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'DeleteDevice');
    return interceptor((ctx, req) {
      return callDeleteDevice(ctx, req);
    })(ctx, req);
  }

  Future<DeleteDeviceResponse> callDeleteDevice(twirp.Context ctx, DeleteDeviceRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/DeleteDevice');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final DeleteDeviceResponse res = DeleteDeviceResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<QueryDevicesResponse> queryDevices(twirp.Context ctx, QueryDevicesRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'QueryDevices');
    return interceptor((ctx, req) {
      return callQueryDevices(ctx, req);
    })(ctx, req);
  }

  Future<QueryDevicesResponse> callQueryDevices(twirp.Context ctx, QueryDevicesRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/QueryDevices');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final QueryDevicesResponse res = QueryDevicesResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateCallMembersResponse> updateCallMembers(twirp.Context ctx, UpdateCallMembersRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'UpdateCallMembers');
    return interceptor((ctx, req) {
      return callUpdateCallMembers(ctx, req);
    })(ctx, req);
  }

  Future<UpdateCallMembersResponse> callUpdateCallMembers(twirp.Context ctx, UpdateCallMembersRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/UpdateCallMembers');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final UpdateCallMembersResponse res = UpdateCallMembersResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DeleteCallMembersResponse> deleteCallMembers(twirp.Context ctx, DeleteCallMembersRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'DeleteCallMembers');
    return interceptor((ctx, req) {
      return callDeleteCallMembers(ctx, req);
    })(ctx, req);
  }

  Future<DeleteCallMembersResponse> callDeleteCallMembers(twirp.Context ctx, DeleteCallMembersRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/DeleteCallMembers');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final DeleteCallMembersResponse res = DeleteCallMembersResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SendCustomEventResponse> sendCustomEvent(twirp.Context ctx, SendCustomEventRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'SendCustomEvent');
    return interceptor((ctx, req) {
      return callSendCustomEvent(ctx, req);
    })(ctx, req);
  }

  Future<SendCustomEventResponse> callSendCustomEvent(twirp.Context ctx, SendCustomEventRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/SendCustomEvent');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final SendCustomEventResponse res = SendCustomEventResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReportCallStatsResponse> reportCallStats(twirp.Context ctx, ReportCallStatsRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'ReportCallStats');
    return interceptor((ctx, req) {
      return callReportCallStats(ctx, req);
    })(ctx, req);
  }

  Future<ReportCallStatsResponse> callReportCallStats(twirp.Context ctx, ReportCallStatsRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/ReportCallStats');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final ReportCallStatsResponse res = ReportCallStatsResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReviewCallResponse> reviewCall(twirp.Context ctx, ReviewCallRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'ReviewCall');
    return interceptor((ctx, req) {
      return callReviewCall(ctx, req);
    })(ctx, req);
  }

  Future<ReviewCallResponse> callReviewCall(twirp.Context ctx, ReviewCallRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/ReviewCall');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final ReviewCallResponse res = ReviewCallResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ReportIssueResponse> reportIssue(twirp.Context ctx, ReportIssueRequest req) async {
    ctx = twirp.withPackageName(ctx, 'client_v1_rpc');
    ctx = twirp.withServiceName(ctx, 'ClientRPC');
    ctx = twirp.withMethodName(ctx, 'ReportIssue');
    return interceptor((ctx, req) {
      return callReportIssue(ctx, req);
    })(ctx, req);
  }

  Future<ReportIssueResponse> callReportIssue(twirp.Context ctx, ReportIssueRequest req) async {
    try {
      Uri url = Uri.parse(baseUrl + prefix + 'stream.video.coordinator.client_v1_rpc.ClientRPC/ReportIssue');
      final data = await doProtobufRequest(ctx, url, hooks, req);
      final ReportIssueResponse res = ReportIssueResponse.create();
      res.mergeFromBuffer(data);
      return Future.value(res);
    } catch (e) {
      rethrow;
    }
  }
}

Future<List<int>> doProtobufRequest(twirp.Context ctx, Uri url,
    twirp.ClientHooks hooks, GeneratedMessage msgReq) async {
  // setup http client
  final httpClient = http.Client();

  try {
    // create http request
    final req = createRequest(url, ctx, 'application/protobuf');

    // add request data to body
    req.bodyBytes = msgReq.writeToBuffer();

    // call onRequestPrepared hook for user to modify request
    ctx = hooks.onRequestPrepared(ctx, req);

    // send data
    final res = await httpClient.send(req);

    // if success, parse and return response
    if (res.statusCode == 200) {
      List<int> data = <int>[];
      await res.stream.listen((value) {
        data.addAll(value);
      }).asFuture();
      hooks.onResponseReceived(ctx);
      return Future.value(data);
    }

    // we received a twirp related error
    throw twirp.TwirpError.fromJson(
        json.decode(await res.stream.transform(utf8.decoder).join()), ctx);
  } on twirp.TwirpError catch (twirpErr) {
    hooks.onError(ctx, twirpErr);
    rethrow;
  } catch (e) {
    // catch http connection error or from onRequestPrepared
    final twirpErr = twirp.TwirpError.fromConnectionError(e.toString(), ctx);
    hooks.onError(ctx, twirpErr);
    throw twirpErr;
  } finally {
    httpClient.close();
  }
}

Future<String> doJSONRequest(twirp.Context ctx, Uri url,
    twirp.ClientHooks hooks, GeneratedMessage msgReq) async {
  // setup http client
  final httpClient = http.Client();

  try {
    // create http request
    final req = createRequest(url, ctx, 'application/json');

    // add request data to body
    req.body = json.encode(msgReq.toProto3Json());

    // call onRequestPrepared hook for user to modify request
    ctx = hooks.onRequestPrepared(ctx, req);

    // send data
    final res = await httpClient.send(req);

    // if success, parse and return response
    if (res.statusCode == 200) {
      final data = await res.stream.transform(utf8.decoder).join().then((data) {
        hooks.onResponseReceived(ctx);
        return data;
      });
      return Future.value(data);
    }

    // we received a twirp related error
    throw twirp.TwirpError.fromJson(
        json.decode(await res.stream.transform(utf8.decoder).join()), ctx);
  } on twirp.TwirpError catch (twirpErr) {
    hooks.onError(ctx, twirpErr);
    rethrow;
  } catch (e) {
    // catch http connection error or from onRequestPrepared
    final twirpErr = twirp.TwirpError.fromConnectionError(e.toString(), ctx);
    hooks.onError(ctx, twirpErr);
    throw twirpErr;
  } finally {
    httpClient.close();
  }
}

http.Request createRequest(
    Uri url, twirp.Context ctx, String applicationHeader) {
  // setup request
  final req = http.Request("POST", url);

  // add headers from context
  final headersFromCtx = twirp.retrieveHttpRequestHeaders(ctx) ?? {};
  req.headers.addAll(headersFromCtx);

  // add required headers
  req.headers['Accept'] = applicationHeader;
  req.headers['Content-Type'] = applicationHeader;

  return req;
}
