import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for your-bio widget.
  FocusNode? yourBioFocusNode;
  TextEditingController? yourBioTextController;
  String? Function(BuildContext, String?)? yourBioTextControllerValidator;
  // State field(s) for yourNumber widget.
  FocusNode? yourNumberFocusNode;
  TextEditingController? yourNumberTextController;
  String? Function(BuildContext, String?)? yourNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourBioFocusNode?.dispose();
    yourBioTextController?.dispose();

    yourNumberFocusNode?.dispose();
    yourNumberTextController?.dispose();
  }
}
