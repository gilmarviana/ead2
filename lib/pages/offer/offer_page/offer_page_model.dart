import '/flutter_flow/flutter_flow_util.dart';
import 'offer_page_widget.dart' show OfferPageWidget;
import 'package:flutter/material.dart';

class OfferPageModel extends FlutterFlowModel<OfferPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
