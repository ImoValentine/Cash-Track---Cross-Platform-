import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_agreement_c_r_search_widget.dart' show AddAgreementCRSearchWidget;
import 'package:flutter/material.dart';

class AddAgreementCRSearchModel
    extends FlutterFlowModel<AddAgreementCRSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EntercashrtrackIDofdebtor widget.
  FocusNode? entercashrtrackIDofdebtorFocusNode;
  TextEditingController? entercashrtrackIDofdebtorTextController;
  String? Function(BuildContext, String?)?
      entercashrtrackIDofdebtorTextControllerValidator;
  List<AgreementsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    entercashrtrackIDofdebtorFocusNode?.dispose();
    entercashrtrackIDofdebtorTextController?.dispose();
  }
}
