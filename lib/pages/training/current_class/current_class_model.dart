import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'current_class_widget.dart' show CurrentClassWidget;
import 'package:flutter/material.dart';

class CurrentClassModel extends FlutterFlowModel<CurrentClassWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (concluirAula)] action in Icon widget.
  ApiCallResponse? apiResultlpd;
  // Stores action output result for [Backend Call - API (deletarAula)] action in Icon widget.
  ApiCallResponse? apiResultwt8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
