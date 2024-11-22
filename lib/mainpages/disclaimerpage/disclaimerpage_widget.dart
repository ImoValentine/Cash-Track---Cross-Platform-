import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'disclaimerpage_model.dart';
export 'disclaimerpage_model.dart';

class DisclaimerpageWidget extends StatefulWidget {
  /// onboarding
  const DisclaimerpageWidget({super.key});

  @override
  State<DisclaimerpageWidget> createState() => _DisclaimerpageWidgetState();
}

class _DisclaimerpageWidgetState extends State<DisclaimerpageWidget> {
  late DisclaimerpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisclaimerpageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 1.066,
            child: Stack(
              alignment: const AlignmentDirectional(0.0, -1.0),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1475274047050-1d0c0975c63e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxuaWdodCUyMHNreXxlbnwwfHx8fDE3MjgzNzk3Nzd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                    width: 1542.0,
                    height: 1058.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: Text(
                          'Disclaimer',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Disclaimer for Digital Contract Mobile App\n\nThe services provided by this mobile application are intended to assist users in tracking debts and facilitating payment arrangements. While we strive to ensure the accuracy and reliability of the data recorded, Cash track does not guarantee the fulfillment or enforcement of any contractual obligations between users.\n\nBy using this app, users acknowledge and agree that:\n\nNo Legal Guarantee: This app is a tool for managing debt-related agreements. It does not constitute legal advice, nor does it guarantee payments or legally enforceable outcomes. Users are responsible for ensuring their contracts are legally binding and compliant with applicable laws.\n\nUser Responsibility: Users are solely responsible for entering accurate data, ensuring timely payments, and managing their own debt collection processes.Cash Track is not liable for any financial loss, missed payments, or disputes arising from the use of the app.\n\nThird-Party Services: The app may integrate with third-party payment systems. Cash Track does not control these services and is not liable for any issues arising from their use, including transaction failures, delays, or fees.\n\nLimitation of Liability: To the fullest extent permitted by law, Cash Track disclaims all warranties, express or implied, and is not responsible for any damages or losses arising from your use of the app.\n\nBy using this app, you agree to these terms and understand that Cash Track provides no guarantee of payment collection or legal enforcement of debt-related agreements. Users may make cases in small claims court using the digial contracts provided ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFFE1F3FF),
                            letterSpacing: 0.0,
                            shadows: [
                              Shadow(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                offset: const Offset(2.0, 2.0),
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Return to toolkit',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF21149E),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
