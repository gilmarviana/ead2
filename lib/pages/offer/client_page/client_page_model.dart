import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'client_page_widget.dart' show ClientPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClientPageModel extends FlutterFlowModel<ClientPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for textfieldnome widget.
  FocusNode? textfieldnomeFocusNode1;
  TextEditingController? textfieldnomeTextController1;
  String? Function(BuildContext, String?)?
      textfieldnomeTextController1Validator;
  // State field(s) for textfieldnome widget.
  FocusNode? textfieldnomeFocusNode2;
  TextEditingController? textfieldnomeTextController2;
  String? Function(BuildContext, String?)?
      textfieldnomeTextController2Validator;
  // State field(s) for textfieldnome widget.
  FocusNode? textfieldnomeFocusNode3;
  TextEditingController? textfieldnomeTextController3;
  String? Function(BuildContext, String?)?
      textfieldnomeTextController3Validator;
  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode1;
  TextEditingController? textFieldNumeroTextController1;
  String? Function(BuildContext, String?)?
      textFieldNumeroTextController1Validator;
  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode2;
  TextEditingController? textFieldNumeroTextController2;
  String? Function(BuildContext, String?)?
      textFieldNumeroTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textfieldnomeFocusNode1?.dispose();
    textfieldnomeTextController1?.dispose();

    textfieldnomeFocusNode2?.dispose();
    textfieldnomeTextController2?.dispose();

    textfieldnomeFocusNode3?.dispose();
    textfieldnomeTextController3?.dispose();

    textFieldNumeroFocusNode1?.dispose();
    textFieldNumeroTextController1?.dispose();

    textFieldNumeroFocusNode2?.dispose();
    textFieldNumeroTextController2?.dispose();
  }
}
