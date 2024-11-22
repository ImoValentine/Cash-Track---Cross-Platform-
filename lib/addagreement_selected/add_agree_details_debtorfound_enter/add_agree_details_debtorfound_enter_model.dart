import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_agree_details_debtorfound_enter_widget.dart'
    show AddAgreeDetailsDebtorfoundEnterWidget;
import 'package:flutter/material.dart';

class AddAgreeDetailsDebtorfoundEnterModel
    extends FlutterFlowModel<AddAgreeDetailsDebtorfoundEnterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EnterloanAmount widget.
  FocusNode? enterloanAmountFocusNode;
  TextEditingController? enterloanAmountTextController;
  String? Function(BuildContext, String?)?
      enterloanAmountTextControllerValidator;
  // State field(s) for EnterloanPaybaclAmount widget.
  FocusNode? enterloanPaybaclAmountFocusNode;
  TextEditingController? enterloanPaybaclAmountTextController;
  String? Function(BuildContext, String?)?
      enterloanPaybaclAmountTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for creditor_name widget.
  FocusNode? creditorNameFocusNode;
  TextEditingController? creditorNameTextController;
  String? Function(BuildContext, String?)? creditorNameTextControllerValidator;
  DateTime? datePicked1;
  // Stores action output result for [Backend Call - API (Docuseal submission )] action in downloadpdf widget.
  ApiCallResponse? docusealresponse;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    enterloanAmountFocusNode?.dispose();
    enterloanAmountTextController?.dispose();

    enterloanPaybaclAmountFocusNode?.dispose();
    enterloanPaybaclAmountTextController?.dispose();

    creditorNameFocusNode?.dispose();
    creditorNameTextController?.dispose();
  }
}
