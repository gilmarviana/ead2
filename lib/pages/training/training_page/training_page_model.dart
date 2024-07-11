import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'training_page_widget.dart' show TrainingPageWidget;
import 'package:flutter/material.dart';

class TrainingPageModel extends FlutterFlowModel<TrainingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (createNewTraining)] action in Container widget.
  ApiCallResponse? apiResultmbq;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
