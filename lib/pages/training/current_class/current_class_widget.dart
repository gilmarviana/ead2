import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'current_class_model.dart';
export 'current_class_model.dart';

class CurrentClassWidget extends StatefulWidget {
  const CurrentClassWidget({super.key});

  @override
  State<CurrentClassWidget> createState() => _CurrentClassWidgetState();
}

class _CurrentClassWidgetState extends State<CurrentClassWidget> {
  late CurrentClassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurrentClassModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
                  elevation: 2.0,
                )
            ],
            body: Builder(
              builder: (context) {
                return SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 2.7,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent1,
                            shape: BoxShape.rectangle,
                          ),
                          child: FutureBuilder<ApiCallResponse>(
                            future: BAppEuVendoGroup.getCurrentClassCall.call(
                              id: FFAppState().currentClasses,
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
                              final columnGetCurrentClassResponse =
                                  snapshot.data!;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (FFAppState().classesUrl != null &&
                                        FFAppState().classesUrl != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            28.0, 16.0, 28.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                child: Visibility(
                                                  visible: FFAppState()
                                                              .classesUrl !=
                                                          null &&
                                                      FFAppState().classesUrl !=
                                                          '',
                                                  child:
                                                      FlutterFlowYoutubePlayer(
                                                    url:
                                                        '${FFAppState().classesUrl}',
                                                    autoPlay: false,
                                                    looping: false,
                                                    mute: false,
                                                    showControls: true,
                                                    showFullScreen: true,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          28.0, 14.0, 28.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Aulas disponíveis',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final classes =
                                            BAppEuVendoGroup.getCurrentClassCall
                                                    .results(
                                                      columnGetCurrentClassResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: classes.length,
                                          itemBuilder: (context, classesIndex) {
                                            final classesItem =
                                                classes[classesIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(28.0, 0.0, 28.0,
                                                          20.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            FFAppState()
                                                                .classesUrl = '';
                                                            setState(() {});
                                                            FFAppState()
                                                                    .classesUrl =
                                                                getJsonField(
                                                              classesItem,
                                                              r'''$.url_Aula''',
                                                            ).toString();
                                                            setState(() {});

                                                            context.pushNamed(
                                                                'currentClass');
                                                          },
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 90.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(6.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                              .classesUrl =
                                                                          getJsonField(
                                                                        classesItem,
                                                                        r'''$.url_Aula''',
                                                                      ).toString();
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/youtube.jpg',
                                                                                width: 70.0,
                                                                                height: 50.0,
                                                                                fit: BoxFit.fill,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          classesItem,
                                                                          r'''$.Nome''',
                                                                        ).toString(),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (FFAppState()
                                                                              .aulaConcluida ==
                                                                          false)
                                                                        FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future: BAppEuVendoGroup
                                                                              .concluirAulaConsultaCall
                                                                              .call(
                                                                            user:
                                                                                FFAppState().userId,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final conditionalBuilderConcluirAulaConsultaResponse =
                                                                                snapshot.data!;

                                                                            return Builder(
                                                                              builder: (context) {
                                                                                if (!BAppEuVendoGroup.concluirAulaConsultaCall
                                                                                    .aulaId(
                                                                                      conditionalBuilderConcluirAulaConsultaResponse.jsonBody,
                                                                                    )!
                                                                                    .contains(getJsonField(
                                                                                      classesItem,
                                                                                      r'''$._id''',
                                                                                    ).toString())) {
                                                                                  return InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      _model.apiResultlpd = await BAppEuVendoGroup.concluirAulaCall.call(
                                                                                        user: FFAppState().userId,
                                                                                        aula: getJsonField(
                                                                                          classesItem,
                                                                                          r'''$._id''',
                                                                                        ).toString(),
                                                                                        treinamento: FFAppState().currentClasses,
                                                                                      );

                                                                                      if (!(_model.apiResultlpd?.succeeded ?? true)) {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Error!'),
                                                                                                content: Text((_model.apiResultlpd?.jsonBody ?? '').toString()),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      }

                                                                                      setState(() {});
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.check_box_outline_blank_outlined,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                  );
                                                                                } else {
                                                                                  return InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      _model.apiResultwt8 = await BAppEuVendoGroup.deletarAulaCall.call(
                                                                                        user: FFAppState().userId,
                                                                                        aula: getJsonField(
                                                                                          classesItem,
                                                                                          r'''$._id''',
                                                                                        ).toString(),
                                                                                      );

                                                                                      if (!(_model.apiResultwt8?.succeeded ?? true)) {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Error'),
                                                                                                content: Text((_model.apiResultwt8?.jsonBody ?? '').toString()),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      }

                                                                                      setState(() {});
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.check_box_outlined,
                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: BAppEuVendoGroup
                                          .getAulaUsuarioCall
                                          .call(
                                        user: FFAppState().userId,
                                        treinamento:
                                            FFAppState().currentClasses,
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final columnGetAulaUsuarioResponse =
                                            snapshot.data!;

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().isCertificado ==
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await launchURL(
                                                        'https://sistema.euvendo.app/version-test/certificado?name=${FFAppState().userName}&curso=${FFAppState().trainingName}&horas=${FFAppState().cargaHoraria}');
                                                  },
                                                  text: 'Cerficado',
                                                  options: FFButtonOptions(
                                                    width: 200.0,
                                                    height: 60.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
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
                                                  ),
                                                ),
                                              ),
                                            FutureBuilder<ApiCallResponse>(
                                              future: BAppEuVendoGroup
                                                  .retornarAprovadoCall
                                                  .call(
                                                user: FFAppState().userId,
                                                treinamento:
                                                    FFAppState().currentClasses,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final buttonRetornarAprovadoResponse =
                                                    snapshot.data!;

                                                return FFButtonWidget(
                                                  onPressed: ((BAppEuVendoGroup
                                                                  .getAulaUsuarioCall
                                                                  .results(
                                                                    columnGetAulaUsuarioResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.length !=
                                                              BAppEuVendoGroup
                                                                  .getCurrentClassCall
                                                                  .results(
                                                                    columnGetCurrentClassResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.length) ||
                                                          (BAppEuVendoGroup
                                                                  .retornarAprovadoCall
                                                                  .isAprovado(
                                                                buttonRetornarAprovadoResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              true))
                                                      ? null
                                                      : () async {
                                                          FFAppState()
                                                              .perguntaAtual = 0;
                                                          FFAppState()
                                                              .alternativaSelecionada = '';
                                                          FFAppState()
                                                              .update(() {});
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
                                                              'avaliacao');
                                                        },
                                                  text: 'Realizar a avaliação',
                                                  options: FFButtonOptions(
                                                    width: 200.0,
                                                    height: 60.0,
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    disabledTextColor:
                                                        Color(0x86000000),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('myTrainingPage');
                                        },
                                        text: 'Voltar',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
