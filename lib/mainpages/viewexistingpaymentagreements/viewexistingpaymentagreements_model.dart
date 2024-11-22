import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'viewexistingpaymentagreements_widget.dart'
    show ViewexistingpaymentagreementsWidget;
import 'package:flutter/material.dart';

class ViewexistingpaymentagreementsModel
    extends FlutterFlowModel<ViewexistingpaymentagreementsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SignedAgreementsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
