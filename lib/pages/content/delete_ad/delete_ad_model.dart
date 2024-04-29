import '/flutter_flow/flutter_flow_util.dart';
import 'delete_ad_widget.dart' show DeleteAdWidget;
import 'package:flutter/material.dart';

class DeleteAdModel extends FlutterFlowModel<DeleteAdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
