import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'faqteste_model.dart';
export 'faqteste_model.dart';

class FaqtesteWidget extends StatefulWidget {
  const FaqtesteWidget({super.key});

  @override
  State<FaqtesteWidget> createState() => _FaqtesteWidgetState();
}

class _FaqtesteWidgetState extends State<FaqtesteWidget> {
  late FaqtesteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqtesteModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1577590835286-1cdd24c08fd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                          width: double.infinity,
                          height: 340.0,
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.85, -0.4),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: const Color(0x7F0F1113),
                              icon: const Icon(
                                Icons.close_rounded,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'SWEET LATTE',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  color: const Color(0xFF14181B),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                      child: Text(
                        'Espresso and steamed milk, lightly sweetened with unrefined brown sugar.',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: Color(0xFFF1F4F8),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Coffee',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF57636C),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              'Reko Ethiopia',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF14181B),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 4.0, 0.0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF14181B),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 1.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: Color(0xFFF1F4F8),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Milk',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF57636C),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              'Whole Milk',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF14181B),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 4.0, 0.0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF14181B),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 1.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: Color(0xFFF1F4F8),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Espresso Shots',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF57636C),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              'Standard',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF14181B),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 4.0, 0.0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF14181B),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 1.0, 24.0, 24.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: Color(0xFFF1F4F8),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Sugar',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF57636C),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              'No Extra Sugar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF14181B),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 4.0, 0.0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF14181B),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: const Color(0xFF4B39EF),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Color(0x411D2429),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                      child: Text(
                        'Add Item',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                      ),
                    ),
                    Text(
                      '1 Item • \$7',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: const Color(0x99FFFFFF),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
