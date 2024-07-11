import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'final_avaliacao_model.dart';
export 'final_avaliacao_model.dart';

class FinalAvaliacaoWidget extends StatefulWidget {
  const FinalAvaliacaoWidget({super.key});

  @override
  State<FinalAvaliacaoWidget> createState() => _FinalAvaliacaoWidgetState();
}

class _FinalAvaliacaoWidgetState extends State<FinalAvaliacaoWidget> {
  late FinalAvaliacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalAvaliacaoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: false,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                title: Align(
                  alignment: AlignmentDirectional(0.0, 0.3),
                  child: Image.asset(
                    'assets/images/Grupo-32.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.contain,
                  ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 3.0,
              )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: FutureBuilder<ApiCallResponse>(
                        future: BAppEuVendoGroup.retornarRespostasCall.call(
                          user: FFAppState().userId,
                          treinamento: FFAppState().currentClasses,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final containerRetornarRespostasResponse =
                              snapshot.data!;

                          return Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              shape: BoxShape.rectangle,
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future:
                                  BAppEuVendoGroup.retornaPerguntasCall.call(
                                treinamento: FFAppState().currentClasses,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final columnRetornaPerguntasResponse =
                                    snapshot.data!;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          22.0, 22.0, 22.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    if (functions.isAprovado(
                                                            BAppEuVendoGroup
                                                                .retornarRespostasCall
                                                                .totalAcertos(
                                                              containerRetornarRespostasResponse
                                                                  .jsonBody,
                                                            ),
                                                            BAppEuVendoGroup
                                                                .retornaPerguntasCall
                                                                .perguntasTotal(
                                                              columnRetornaPerguntasResponse
                                                                  .jsonBody,
                                                            )!) ??
                                                        false) {
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .crown,
                                                            color: Color(
                                                                0xBEFCDC0C),
                                                            size: 120.0,
                                                          ),
                                                          Text(
                                                            'Parabéns!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      22.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      );
                                                    } else {
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .sadTear,
                                                            color: Color(
                                                                0xBFFF5963),
                                                            size: 120.0,
                                                          ),
                                                          Text(
                                                            'Que pena! Tente novamente.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      22.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 22.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Você acertou ${BAppEuVendoGroup.retornarRespostasCall.totalAcertos(
                                                          containerRetornarRespostasResponse
                                                              .jsonBody,
                                                        ).toString()} de ${BAppEuVendoGroup.retornaPerguntasCall.perguntasTotal(
                                                          columnRetornaPerguntasResponse
                                                              .jsonBody,
                                                        )?.toString()} perguntas.',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          22.0, 0.0, 22.0, 42.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: (FFAppState()
                                                                  .alternativaSelecionada ==
                                                              null ||
                                                          FFAppState()
                                                                  .alternativaSelecionada ==
                                                              '')
                                                      ? null
                                                      : () async {
                                                          if (functions
                                                                  .isAprovado(
                                                                      BAppEuVendoGroup
                                                                          .retornarRespostasCall
                                                                          .totalAcertos(
                                                                        containerRetornarRespostasResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      BAppEuVendoGroup
                                                                          .retornaPerguntasCall
                                                                          .perguntasTotal(
                                                                        columnRetornaPerguntasResponse
                                                                            .jsonBody,
                                                                      )!) ==
                                                              true) {
                                                            _model.apiResultConcluirAva =
                                                                await BAppEuVendoGroup
                                                                    .concluirAvaliacaoCall
                                                                    .call(
                                                              user: FFAppState()
                                                                  .userId,
                                                              treinamento:
                                                                  FFAppState()
                                                                      .currentClasses,
                                                            );

                                                            if ((_model
                                                                    .apiResultConcluirAva
                                                                    ?.succeeded ??
                                                                true)) {
                                                              context.pushNamed(
                                                                  'myTrainingPage');
                                                            }
                                                          } else {
                                                            _model.apiResuResetAva =
                                                                await BAppEuVendoGroup
                                                                    .resetarAvaliacaoCall
                                                                    .call(
                                                              user: FFAppState()
                                                                  .userId,
                                                              treinametno:
                                                                  FFAppState()
                                                                      .currentClasses,
                                                            );

                                                            context.pushNamed(
                                                                'myTrainingPage');
                                                          }

                                                          setState(() {});
                                                        },
                                                  text: 'Finalizar',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    disabledColor:
                                                        Color(0xFF8365E0),
                                                    disabledTextColor:
                                                        Color(0x7AFFFFFF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          );
                        },
                      ),
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
