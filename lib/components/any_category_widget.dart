import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'any_category_model.dart';
export 'any_category_model.dart';

class AnyCategoryWidget extends StatefulWidget {
  const AnyCategoryWidget({super.key});

  @override
  State<AnyCategoryWidget> createState() => _AnyCategoryWidgetState();
}

class _AnyCategoryWidgetState extends State<AnyCategoryWidget> {
  late AnyCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnyCategoryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FlutterFlowIconButton(
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: FaIcon(
              FontAwesomeIcons.laptop,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 35.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          Text(
            'Portables',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
