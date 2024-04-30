import '/components/custom_nav_bar_profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_ads_widget.dart' show MyAdsWidget;
import 'package:flutter/material.dart';

class MyAdsModel extends FlutterFlowModel<MyAdsWidget> {
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
