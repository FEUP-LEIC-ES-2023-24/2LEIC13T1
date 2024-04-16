import '/components/any_category_widget.dart';
import '/components/nav_bar_home_widget.dart';
import '/components/search_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBox component.
  late SearchBoxModel searchBoxModel;
  // Model for AnyCategory component.
  late AnyCategoryModel anyCategoryModel;
  // Model for NavBarHome component.
  late NavBarHomeModel navBarHomeModel;

  @override
  void initState(BuildContext context) {
    searchBoxModel = createModel(context, () => SearchBoxModel());
    anyCategoryModel = createModel(context, () => AnyCategoryModel());
    navBarHomeModel = createModel(context, () => NavBarHomeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBoxModel.dispose();
    anyCategoryModel.dispose();
    navBarHomeModel.dispose();
  }
}
