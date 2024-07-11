import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_training_page_widget.dart' show MyTrainingPageWidget;
import 'package:flutter/material.dart';

class MyTrainingPageModel extends FlutterFlowModel<MyTrainingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getAulaUsuario)] action in Container widget.
  ApiCallResponse? getAulausuarioResponse;
  // Stores action output result for [Backend Call - API (getAulaUsuario)] action in Container widget.
  ApiCallResponse? getAulausuarioResponseCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
