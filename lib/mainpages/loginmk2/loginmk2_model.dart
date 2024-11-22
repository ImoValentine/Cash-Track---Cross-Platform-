import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loginmk2_widget.dart' show Loginmk2Widget;
import 'package:flutter/material.dart';

class Loginmk2Model extends FlutterFlowModel<Loginmk2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for LOGINandCREATE_Accounttab widget.
  TabController? lOGINandCREATEAccounttabController;
  int get lOGINandCREATEAccounttabCurrentIndex =>
      lOGINandCREATEAccounttabController != null
          ? lOGINandCREATEAccounttabController!.index
          : 0;

  // State field(s) for Enteremai_signpl widget.
  FocusNode? enteremaiSignplFocusNode;
  TextEditingController? enteremaiSignplTextController;
  String? Function(BuildContext, String?)?
      enteremaiSignplTextControllerValidator;
  // State field(s) for enterpassword widget.
  FocusNode? enterpasswordFocusNode;
  TextEditingController? enterpasswordTextController;
  late bool enterpasswordVisibility;
  String? Function(BuildContext, String?)? enterpasswordTextControllerValidator;
  // State field(s) for confirm_password widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for eneterfirstname widget.
  FocusNode? eneterfirstnameFocusNode;
  TextEditingController? eneterfirstnameTextController;
  String? Function(BuildContext, String?)?
      eneterfirstnameTextControllerValidator;
  // State field(s) for entersurname widget.
  FocusNode? entersurnameFocusNode;
  TextEditingController? entersurnameTextController;
  String? Function(BuildContext, String?)? entersurnameTextControllerValidator;
  // State field(s) for enteID widget.
  FocusNode? enteIDFocusNode;
  TextEditingController? enteIDTextController;
  String? Function(BuildContext, String?)? enteIDTextControllerValidator;
  // State field(s) for Enter_cell_number widget.
  FocusNode? enterCellNumberFocusNode;
  TextEditingController? enterCellNumberTextController;
  String? Function(BuildContext, String?)?
      enterCellNumberTextControllerValidator;
  // Stores action output result for [Backend Call - API (CreatePaystackCustomer)] action in Button widget.
  ApiCallResponse? paystackCustomerCreated;
  // State field(s) for Enteremaillogin widget.
  FocusNode? enteremailloginFocusNode;
  TextEditingController? enteremailloginTextController;
  String? Function(BuildContext, String?)?
      enteremailloginTextControllerValidator;
  // State field(s) for EntePasswordlogin widget.
  FocusNode? entePasswordloginFocusNode;
  TextEditingController? entePasswordloginTextController;
  late bool entePasswordloginVisibility;
  String? Function(BuildContext, String?)?
      entePasswordloginTextControllerValidator;
  List<AgreementsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    enterpasswordVisibility = false;
    confirmPasswordVisibility = false;
    entePasswordloginVisibility = false;
  }

  @override
  void dispose() {
    lOGINandCREATEAccounttabController?.dispose();
    enteremaiSignplFocusNode?.dispose();
    enteremaiSignplTextController?.dispose();

    enterpasswordFocusNode?.dispose();
    enterpasswordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    eneterfirstnameFocusNode?.dispose();
    eneterfirstnameTextController?.dispose();

    entersurnameFocusNode?.dispose();
    entersurnameTextController?.dispose();

    enteIDFocusNode?.dispose();
    enteIDTextController?.dispose();

    enterCellNumberFocusNode?.dispose();
    enterCellNumberTextController?.dispose();

    enteremailloginFocusNode?.dispose();
    enteremailloginTextController?.dispose();

    entePasswordloginFocusNode?.dispose();
    entePasswordloginTextController?.dispose();
  }
}
