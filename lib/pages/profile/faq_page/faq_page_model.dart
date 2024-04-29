import '/components/nav_bar_profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'faq_page_widget.dart' show FaqPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FaqPageModel extends FlutterFlowModel<FaqPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Model for NavBarProfile component.
  late NavBarProfileModel navBarProfileModel;

  @override
  void initState(BuildContext context) {
    navBarProfileModel = createModel(context, () => NavBarProfileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    navBarProfileModel.dispose();
  }
}
