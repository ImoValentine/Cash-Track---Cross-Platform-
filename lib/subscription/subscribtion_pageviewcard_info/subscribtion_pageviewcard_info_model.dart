import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscribtion_pageviewcard_info_widget.dart'
    show SubscribtionPageviewcardInfoWidget;
import 'package:flutter/material.dart';

class SubscribtionPageviewcardInfoModel
    extends FlutterFlowModel<SubscribtionPageviewcardInfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (Tranaction Initialize)] action in Button widget.
  ApiCallResponse? apiResultbf9;
  // Stores action output result for [Backend Call - API (Verify Transaction )] action in Button widget.
  ApiCallResponse? verifiedPaystack;
  // Stores action output result for [Backend Call - API (CreatePaystackSubscription)] action in Button widget.
  ApiCallResponse? apiResultp2a;
  // Stores action output result for [Backend Call - API (Tranaction Initialize)] action in Button widget.
  ApiCallResponse? transactionInitialize;
  // Stores action output result for [Backend Call - API (Verify Transaction )] action in Button widget.
  ApiCallResponse? verifiedPaystack2;
  // Stores action output result for [Backend Call - API (CreatePaystackSubscription)] action in Button widget.
  ApiCallResponse? createSubscriptionPaystack;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
