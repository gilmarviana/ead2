import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'final_avaliacao_widget.dart' show FinalAvaliacaoWidget;
import 'package:flutter/material.dart';

class FinalAvaliacaoModel extends FlutterFlowModel<FinalAvaliacaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (concluirAvaliacao)] action in Button widget.
  ApiCallResponse? apiResultConcluirAva;
  // Stores action output result for [Backend Call - API (resetarAvaliacao)] action in Button widget.
  ApiCallResponse? apiResuResetAva;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
