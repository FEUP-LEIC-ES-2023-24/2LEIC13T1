import '/flutter_flow/flutter_flow_util.dart';
import 'profile_menu_widget.dart' show ProfileMenuWidget;
import 'package:flutter/material.dart';

class ProfileMenuModel extends FlutterFlowModel<ProfileMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
