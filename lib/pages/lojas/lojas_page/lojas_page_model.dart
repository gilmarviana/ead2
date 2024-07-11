import '/flutter_flow/flutter_flow_util.dart';
import 'lojas_page_widget.dart' show LojasPageWidget;
import 'package:flutter/material.dart';

class LojasPageModel extends FlutterFlowModel<LojasPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
