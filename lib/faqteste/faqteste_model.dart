import '/flutter_flow/flutter_flow_util.dart';
import 'faqteste_widget.dart' show FaqtesteWidget;
import 'package:flutter/material.dart';

class FaqtesteModel extends FlutterFlowModel<FaqtesteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
