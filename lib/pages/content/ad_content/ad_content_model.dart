import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ad_content_widget.dart' show AdContentWidget;
import 'package:flutter/material.dart';

class AdContentModel extends FlutterFlowModel<AdContentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  ChatsRecord? testeSerelepeUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
