import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'avaliacao_model.dart';
export 'avaliacao_model.dart';

class AvaliacaoWidget extends StatefulWidget {
  const AvaliacaoWidget({super.key});

  @override
  State<AvaliacaoWidget> createState() => _AvaliacaoWidgetState();
}

class _AvaliacaoWidgetState extends State<AvaliacaoWidget> {
  late AvaliacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvaliacaoModel());
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
                  alignment: const AlignmentDirectional(0.0, 0.3),
                  child: Image.asset(
                    'assets/images/Grupo-32.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.contain,
                  ),
                ),
                actions: const [],
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
                        future: BAppEuVendoGroup.retornaPerguntasCall.call(
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
                          final containerRetornaPerguntasResponse =
                              snapshot.data!;

                          return Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      22.0, 0.0, 22.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    'myTrainingPage');
                                              },
                                              child: Icon(
                                                Icons.arrow_back,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 34.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 28.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Questionário:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: const BoxDecoration(),
                                                child: AutoSizeText(
                                                  valueOrDefault<String>(
                                                    functions
                                                        .returnAtualPergunta(
                                                            FFAppState()
                                                                .perguntaAtual,
                                                            BAppEuVendoGroup
                                                                .retornaPerguntasCall
                                                                .perguntaText(
                                                                  containerRetornaPerguntasResponse
                                                                      .jsonBody,
                                                                )!
                                                                .toList()),
                                                    'Primeira',
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                      ),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      22.0, 0.0, 22.0, 42.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: BAppEuVendoGroup
                                        .retornaAlternativasCall
                                        .call(
                                      pergunta: BAppEuVendoGroup
                                          .retornaPerguntasCall
                                          .perguntaId(
                                        containerRetornaPerguntasResponse
                                            .jsonBody,
                                      )?[FFAppState().perguntaAtual],
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
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final columnRetornaAlternativasResponse =
                                          snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<ApiCallResponse>(
                                            future: BAppEuVendoGroup
                                                .retornaAlternativasCall
                                                .call(
                                              pergunta: BAppEuVendoGroup
                                                  .retornaPerguntasCall
                                                  .perguntaId(
                                                containerRetornaPerguntasResponse
                                                    .jsonBody,
                                              )?[FFAppState().perguntaAtual],
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
                                              final listViewRetornaAlternativasResponse =
                                                  snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  final response = BAppEuVendoGroup
                                                          .retornaAlternativasCall
                                                          .response(
                                                            listViewRetornaAlternativasResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toList() ??
                                                      [];

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: response.length,
                                                    itemBuilder: (context,
                                                        responseIndex) {
                                                      final responseItem =
                                                          response[
                                                              responseIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                FFAppState()
                                                                        .alternativaSelecionada =
                                                                    BAppEuVendoGroup
                                                                        .retornaAlternativasCall
                                                                        .alternativaA(
                                                                  listViewRetornaAlternativasResponse
                                                                      .jsonBody,
                                                                )!;
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      BAppEuVendoGroup
                                                                          .retornaAlternativasCall
                                                                          .alternativaA(
                                                                        listViewRetornaAlternativasResponse
                                                                            .jsonBody,
                                                                      )!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                FFAppState()
                                                                        .alternativaSelecionada =
                                                                    BAppEuVendoGroup
                                                                        .retornaAlternativasCall
                                                                        .alternativaB(
                                                                  listViewRetornaAlternativasResponse
                                                                      .jsonBody,
                                                                )!;
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      BAppEuVendoGroup
                                                                          .retornaAlternativasCall
                                                                          .alternativaB(
                                                                        listViewRetornaAlternativasResponse
                                                                            .jsonBody,
                                                                      )!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                FFAppState()
                                                                        .alternativaSelecionada =
                                                                    BAppEuVendoGroup
                                                                        .retornaAlternativasCall
                                                                        .alternativaC(
                                                                  listViewRetornaAlternativasResponse
                                                                      .jsonBody,
                                                                )!;
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      BAppEuVendoGroup
                                                                          .retornaAlternativasCall
                                                                          .alternativaC(
                                                                        listViewRetornaAlternativasResponse
                                                                            .jsonBody,
                                                                      )!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                FFAppState()
                                                                        .alternativaSelecionada =
                                                                    BAppEuVendoGroup
                                                                        .retornaAlternativasCall
                                                                        .alternativaD(
                                                                          listViewRetornaAlternativasResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString();
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      BAppEuVendoGroup
                                                                          .retornaAlternativasCall
                                                                          .alternativaD(
                                                                            listViewRetornaAlternativasResponse.jsonBody,
                                                                          )
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Alternativa selecionada: ${FFAppState().alternativaSelecionada}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xD1000000),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future: BAppEuVendoGroup
                                                      .getPerguntasCall
                                                      .call(
                                                    treinamento: FFAppState()
                                                        .currentClasses,
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
                                                    final buttonGetPerguntasResponse =
                                                        snapshot.data!;

                                                    return FFButtonWidget(
                                                      onPressed: (FFAppState()
                                                                      .alternativaSelecionada ==
                                                                  '')
                                                          ? null
                                                          : () async {
                                                              _model.retornoPerguntas =
                                                                  actions
                                                                      .returnProximaPergunta(
                                                                FFAppState()
                                                                    .perguntaAtual,
                                                                BAppEuVendoGroup
                                                                    .getPerguntasCall
                                                                    .totalPerguntas(
                                                                  buttonGetPerguntasResponse
                                                                      .jsonBody,
                                                                )!,
                                                              );
                                                              if (_model
                                                                      .retornoPerguntas ==
                                                                  true) {
                                                                if (BAppEuVendoGroup
                                                                        .retornaAlternativasCall
                                                                        .correta(
                                                                      columnRetornaAlternativasResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    FFAppState()
                                                                        .alternativaSelecionada) {
                                                                  _model.apiResultYes =
                                                                      await BAppEuVendoGroup
                                                                          .acertarAvaliacaoCall
                                                                          .call(
                                                                    user: FFAppState()
                                                                        .userId,
                                                                    treinamento:
                                                                        FFAppState()
                                                                            .currentClasses,
                                                                    pergunta: BAppEuVendoGroup
                                                                        .retornaPerguntasCall
                                                                        .perguntaId(
                                                                      containerRetornaPerguntasResponse
                                                                          .jsonBody,
                                                                    )?[FFAppState()
                                                                        .perguntaAtual],
                                                                    alternativaEscolhida:
                                                                        FFAppState()
                                                                            .alternativaSelecionada,
                                                                  );

                                                                  if ((_model
                                                                          .apiResultYes
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    FFAppState()
                                                                            .perguntaAtual =
                                                                        FFAppState().perguntaAtual +
                                                                            1;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                const Text('Ops!'),
                                                                            content:
                                                                                Text((_model.apiResultYess?.jsonBody ?? '').toString()),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                } else {
                                                                  _model.apiResultsErrou =
                                                                      await BAppEuVendoGroup
                                                                          .errarAvaliacaoCall
                                                                          .call(
                                                                    user: FFAppState()
                                                                        .userId,
                                                                    treinamento:
                                                                        FFAppState()
                                                                            .currentClasses,
                                                                    pergunta: BAppEuVendoGroup
                                                                        .retornaPerguntasCall
                                                                        .perguntaId(
                                                                      containerRetornaPerguntasResponse
                                                                          .jsonBody,
                                                                    )?[FFAppState()
                                                                        .perguntaAtual],
                                                                    alternativaEscolhida:
                                                                        FFAppState()
                                                                            .alternativaSelecionada,
                                                                  );

                                                                  if ((_model
                                                                          .apiResultsErrou
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    FFAppState()
                                                                            .perguntaAtual =
                                                                        FFAppState().perguntaAtual +
                                                                            1;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                const Text('Ops!'),
                                                                            content:
                                                                                Text((_model.apiResultsErrouu?.jsonBody ?? '').toString()),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }

                                                                FFAppState()
                                                                    .alternativaSelecionada = '';
                                                                setState(() {});
                                                              } else {
                                                                if (BAppEuVendoGroup
                                                                        .retornaAlternativasCall
                                                                        .correta(
                                                                      columnRetornaAlternativasResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    FFAppState()
                                                                        .alternativaSelecionada) {
                                                                  _model.apiResultYess =
                                                                      await BAppEuVendoGroup
                                                                          .acertarAvaliacaoCall
                                                                          .call(
                                                                    user: FFAppState()
                                                                        .userId,
                                                                    treinamento:
                                                                        FFAppState()
                                                                            .currentClasses,
                                                                    pergunta: BAppEuVendoGroup
                                                                        .retornaPerguntasCall
                                                                        .perguntaId(
                                                                      containerRetornaPerguntasResponse
                                                                          .jsonBody,
                                                                    )?[FFAppState()
                                                                        .perguntaAtual],
                                                                    alternativaEscolhida:
                                                                        FFAppState()
                                                                            .alternativaSelecionada,
                                                                  );

                                                                  if ((_model
                                                                          .apiResultYes
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    context.pushNamed(
                                                                        'finalAvaliacao');
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                const Text('Ops!'),
                                                                            content:
                                                                                Text((_model.apiResultYess?.jsonBody ?? '').toString()),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                } else {
                                                                  _model.apiResultsErrouu =
                                                                      await BAppEuVendoGroup
                                                                          .errarAvaliacaoCall
                                                                          .call(
                                                                    user: FFAppState()
                                                                        .userId,
                                                                    treinamento:
                                                                        FFAppState()
                                                                            .currentClasses,
                                                                    pergunta: BAppEuVendoGroup
                                                                        .retornaPerguntasCall
                                                                        .perguntaId(
                                                                      containerRetornaPerguntasResponse
                                                                          .jsonBody,
                                                                    )?[FFAppState()
                                                                        .perguntaAtual],
                                                                    alternativaEscolhida:
                                                                        FFAppState()
                                                                            .alternativaSelecionada,
                                                                  );

                                                                  if ((_model
                                                                          .apiResultsErrou
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    context.pushNamed(
                                                                        'finalAvaliacao');
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                const Text('Ops!'),
                                                                            content:
                                                                                Text((_model.apiResultsErrouu?.jsonBody ?? '').toString()),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }
                                                              }

                                                              setState(() {});
                                                            },
                                                      text: 'Próxima',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 50.0,
                                                        padding:
                                                            const EdgeInsets.all(0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        disabledColor:
                                                            const Color(0xFF8365E0),
                                                        disabledTextColor:
                                                            const Color(0x7AFFFFFF),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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
