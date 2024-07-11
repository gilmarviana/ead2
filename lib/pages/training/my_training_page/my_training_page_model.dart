import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_training_page_widget.dart' show MyTrainingPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
