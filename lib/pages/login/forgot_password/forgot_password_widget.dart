import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/email_sent_dialog_widget.dart';
import '/components/invalid_email_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:text_search/text_search.dart';
import 'forgot_password_model.dart';
export 'forgot_password_model.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({super.key});

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget>
    with TickerProviderStateMixin {
  late ForgotPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF15161E),
            size: 30.0,
          ),
          onPressed: () async {
            context.pushNamed('HomePage');
          },
        ),
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
          child: Text(
            'Back',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Inter',
                  color: const Color(0xFF15161E),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Align(
        alignment: const AlignmentDirectional(0.0, -1.0),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // This row exists for when the "app bar" is hidden on desktop, having a way back for the user can work well.
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFF15161E),
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF15161E),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Forgot Password',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFF15161E),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                child: Text(
                  'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        color: const Color(0xFF606A85),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    key: const ValueKey('EmailTextBox'),
                    controller: _model.emailAddressController,
                    focusNode: _model.emailAddressFocusNode,
                    autofillHints: const [AutofillHints.email],
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Your email address...',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: const Color(0xFF606A85),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: 'Enter your email...',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: const Color(0xFF606A85),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE5E7EB),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFFF5963),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFFF5963),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 20.0, 24.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF15161E),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    maxLines: null,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: const Color(0xFF6F61EF),
                    validator: _model.emailAddressControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      key: const ValueKey('SendLinkButton'),
                      onPressed: () async {
                        await queryUsersRecordOnce()
                            .then(
                              (records) => _model
                                  .simpleSearchResults = TextSearch(
                                records
                                    .map(
                                      (record) => TextSearchItem.fromTerms(
                                          record, [record.email]),
                                    )
                                    .toList(),
                              )
                                  .search(_model.emailAddressController.text)
                                  .map((r) => r.object)
                                  .toList(),
                            )
                            .onError((_, __) => _model.simpleSearchResults = [])
                            .whenComplete(() => setState(() {}));

                        if ((_model.simpleSearchResults.isNotEmpty) == true) {
                          if (_model.emailAddressController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Email required!',
                                ),
                              ),
                            );
                            return;
                          }
                          await authManager.resetPassword(
                            email: _model.emailAddressController.text,
                            context: context,
                          );
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: const SizedBox(
                                  height: 300.0,
                                  width: 300.0,
                                  child: EmailSentDialogWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        } else {
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: const SizedBox(
                                  height: 300.0,
                                  width: 300.0,
                                  child: InvalidEmailDialogWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }
                      },
                      text: 'Send Link',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).error,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation']!),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
