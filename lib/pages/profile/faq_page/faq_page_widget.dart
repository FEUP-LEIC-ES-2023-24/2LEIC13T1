import '/components/nav_bar_profile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'faq_page_model.dart';
export 'faq_page_model.dart';

class FaqPageWidget extends StatefulWidget {
  const FaqPageWidget({super.key});

  @override
  State<FaqPageWidget> createState() => _FaqPageWidgetState();
}

class _FaqPageWidgetState extends State<FaqPageWidget> {
  late FaqPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqPageModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 55.0,
              pinned: false,
              floating: false,
              backgroundColor: const Color(0xFFB4E0F8),
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 55.0,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFB4E0F8),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Color(0xFF006BAF),
                        size: 35.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ),
                ),
              ),
              title: Text(
                'FAQ\'s',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: const Color(0xFF006BAF),
                      fontSize: 25.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 4.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          20.0,
                          0,
                          0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: double.infinity,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController1,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Text(
                                    'What is Martech?',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 10.0, 25.0, 25.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'MarTechPlace isn\'t quite MarTech! MarTech refers to marketing technologies used by businesses. L.EIC MarTechPlace, on the other hand, is a marketplace app specifically for Porto\'s academic community.\n\nHere at L.EIC MarTechPlace, our goal is to:\n\n- Facilitate the reuse of electronic devices among students.\n- Promote sustainability within the academic community.\n- Create a culture of solidarity and resourcefulness.\n\nThink of us as a virtual garage sale for electronics! You can find great deals on pre-owned devices, perfect for your studies, while giving unwanted tech a new life and reducing e-waste.',
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon:
                                      Icons.keyboard_arrow_down_outlined,
                                  collapseIcon: Icons.keyboard_arrow_up,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController2,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Text(
                                    'How do I make a purchase?',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 10.0, 25.0, 25.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Making a purchase on L.EIC MarTechPlace is easy! Here\'s a quick walk-through:\n\nFind the perfect device: Browse through our listings using filters or the search bar to find the electronics you need.\nContact the seller: Once you\'ve found the item you want, simply message the seller directly through the app to discuss details like price and condition.\nAgree on a deal: Negotiate the price (if applicable) and arrange a pick-up or delivery method directly with the seller. Important note: L.EIC MarTechPlace doesn\'t currently handle payments, so ensure a secure method with the seller (cash on pick-up is a common option).\nEnjoy your new device! Congratulations on your purchase! We hope it helps you out in your studies.',
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon:
                                      Icons.keyboard_arrow_down_outlined,
                                  collapseIcon: Icons.keyboard_arrow_up,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController3,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Text(
                                    'How can I contact Martech?',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 10.0, 25.0, 25.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'While L.EIC MarTechPlace is still under development, we appreciate your interest! Currently, the best way to reach us is through our project website or social media pages (if available). In the future, we may implement a direct contact option within the app itself.',
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon:
                                      Icons.keyboard_arrow_down_outlined,
                                  collapseIcon: Icons.keyboard_arrow_up,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController4,
                              child: ExpandablePanel(
                                header: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Text(
                                    'How can I return a product?',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 10.0, 25.0, 25.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Since L.EIC MarTechPlace facilitates user-to-user sales, returns are handled directly between the buyer and seller.  It\'s important to communicate your return policy clearly in your ad description and discuss any potential returns with the buyer before finalizing the deal.\n\nWe recommend establishing clear communication and setting expectations upfront to ensure a smooth buying and selling experience for everyone.',
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon:
                                      Icons.keyboard_arrow_down_outlined,
                                  collapseIcon: Icons.keyboard_arrow_up,
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 25.0)),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.navBarProfileModel,
                            updateCallback: () => setState(() {}),
                            child: const NavBarProfileWidget(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
