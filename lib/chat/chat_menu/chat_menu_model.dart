import '/components/nav_bar_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_menu_widget.dart' show ChatMenuWidget;
import 'package:flutter/material.dart';

class ChatMenuModel extends FlutterFlowModel<ChatMenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarHome component.
  late NavBarHomeModel navBarHomeModel;

  @override
  void initState(BuildContext context) {
    navBarHomeModel = createModel(context, () => NavBarHomeModel());
  }

  @override
  void dispose() {
    navBarHomeModel.dispose();
  }
}
