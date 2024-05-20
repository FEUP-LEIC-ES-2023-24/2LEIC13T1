import '/components/custom_nav_bar_profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reports_widget.dart' show ReportsWidget;
import 'package:flutter/material.dart';

class ReportsModel extends FlutterFlowModel<ReportsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavBarProfile component.
  late CustomNavBarProfileModel customNavBarProfileModel;

  @override
  void initState(BuildContext context) {
    customNavBarProfileModel =
        createModel(context, () => CustomNavBarProfileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavBarProfileModel.dispose();
  }
}
