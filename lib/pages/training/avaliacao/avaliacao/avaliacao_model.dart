import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'avaliacao_widget.dart' show AvaliacaoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AvaliacaoModel extends FlutterFlowModel<AvaliacaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - returnProximaPergunta] action in Button widget.
  bool? retornoPerguntas;
  // Stores action output result for [Backend Call - API (acertarAvaliacao)] action in Button widget.
  ApiCallResponse? apiResultYes;
  // Stores action output result for [Backend Call - API (errarAvaliacao)] action in Button widget.
  ApiCallResponse? apiResultsErrou;
  // Stores action output result for [Backend Call - API (acertarAvaliacao)] action in Button widget.
  ApiCallResponse? apiResultYess;
  // Stores action output result for [Backend Call - API (errarAvaliacao)] action in Button widget.
  ApiCallResponse? apiResultsErrouu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
