import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_nav_bar_home_model.dart';
export 'custom_nav_bar_home_model.dart';

class CustomNavBarHomeWidget extends StatefulWidget {
  const CustomNavBarHomeWidget({super.key});

  @override
  State<CustomNavBarHomeWidget> createState() => _CustomNavBarHomeWidgetState();
}

class _CustomNavBarHomeWidgetState extends State<CustomNavBarHomeWidget> {
  late CustomNavBarHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavBarHomeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 55.0,
                icon: Icon(
                  Icons.home,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
                onPressed: () async {
                  context.pushNamed('HomePage');
                },
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 55.0,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
                onPressed: () async {
                  context.pushNamed('Create_new_ad');
                },
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 55.0,
                icon: Icon(
                  Icons.person_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
                onPressed: () async {
                  if (loggedIn) {
                    context.pushNamed('ProfileMenu');
                  } else {
                    context.pushNamed('LoginRegister');
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
