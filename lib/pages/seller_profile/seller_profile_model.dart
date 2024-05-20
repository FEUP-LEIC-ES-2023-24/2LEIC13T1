import '/backend/backend.dart';
import '/components/nav_bar_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seller_profile_widget.dart' show SellerProfileWidget;
import 'package:flutter/material.dart';

class SellerProfileModel extends FlutterFlowModel<SellerProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  ChatsRecord? testeSerelepeUser;
  // Model for NavBarHome component.
  late NavBarHomeModel navBarHomeModel;

  @override
  void initState(BuildContext context) {
    navBarHomeModel = createModel(context, () => NavBarHomeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarHomeModel.dispose();
  }
}
