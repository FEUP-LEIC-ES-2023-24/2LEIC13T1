import '/components/custom_nav_bar_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_home_widget.dart' show NavBarHomeWidget;
import 'package:flutter/material.dart';

class NavBarHomeModel extends FlutterFlowModel<NavBarHomeWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CustomNavBarHome component.
  late CustomNavBarHomeModel customNavBarHomeModel;

  @override
  void initState(BuildContext context) {
    customNavBarHomeModel = createModel(context, () => CustomNavBarHomeModel());
  }

  @override
  void dispose() {
    customNavBarHomeModel.dispose();
  }
}
