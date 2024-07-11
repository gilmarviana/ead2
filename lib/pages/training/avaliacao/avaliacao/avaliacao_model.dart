import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'avaliacao_widget.dart' show AvaliacaoWidget;
import 'package:flutter/material.dart';

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
