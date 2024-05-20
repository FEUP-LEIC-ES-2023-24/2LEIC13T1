import '/flutter_flow/flutter_flow_util.dart';
import 'ad_report_concern_widget.dart' show AdReportConcernWidget;
import 'package:flutter/material.dart';

class AdReportConcernModel extends FlutterFlowModel<AdReportConcernWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Concern widget.
  FocusNode? concernFocusNode;
  TextEditingController? concernTextController;
  String? Function(BuildContext, String?)? concernTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    concernFocusNode?.dispose();
    concernTextController?.dispose();
  }
}
