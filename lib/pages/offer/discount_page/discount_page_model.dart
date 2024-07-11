import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'discount_page_widget.dart' show DiscountPageWidget;
import 'package:flutter/material.dart';

class DiscountPageModel extends FlutterFlowModel<DiscountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDowndiscountstatus widget.
  String? dropDowndiscountstatusValue;
  FormFieldController<String>? dropDowndiscountstatusValueController;
  // State field(s) for DropDowntype widget.
  String? dropDowntypeValue;
  FormFieldController<String>? dropDowntypeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (updateOfferB)] action in Button widget.
  ApiCallResponse? apiResultvo1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
