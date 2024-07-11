import '/backend/api_requests/api_calls.dart';
import '/components/photo_upload_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'new_offer_page_widget.dart' show NewOfferPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NewOfferPageModel extends FlutterFlowModel<NewOfferPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for textfieldnome widget.
  FocusNode? textfieldnomeFocusNode;
  TextEditingController? textfieldnomeTextController;
  String? Function(BuildContext, String?)? textfieldnomeTextControllerValidator;
  String? _textfieldnomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o nome do cliente';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for TextFieldPreco widget.
  FocusNode? textFieldPrecoFocusNode;
  TextEditingController? textFieldPrecoTextController;
  String? Function(BuildContext, String?)?
      textFieldPrecoTextControllerValidator;
  String? _textFieldPrecoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o preço do produto';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode;
  TextEditingController? textFieldNumeroTextController;
  final textFieldNumeroMask = MaskTextInputFormatter(mask: '###########');
  String? Function(BuildContext, String?)?
      textFieldNumeroTextControllerValidator;
  String? _textFieldNumeroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o número do cliente';
    }

    if (val.length < 11) {
      return 'Digite o telefone no padrão (DD) # #### #### (sem os parênteses)';
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - API (postOfferB)] action in Button widget.
  ApiCallResponse? apiResultx77;

  @override
  void initState(BuildContext context) {
    textfieldnomeTextControllerValidator =
        _textfieldnomeTextControllerValidator;
    textFieldPrecoTextControllerValidator =
        _textFieldPrecoTextControllerValidator;
    textFieldNumeroTextControllerValidator =
        _textFieldNumeroTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textfieldnomeFocusNode?.dispose();
    textfieldnomeTextController?.dispose();

    textFieldPrecoFocusNode?.dispose();
    textFieldPrecoTextController?.dispose();

    textFieldNumeroFocusNode?.dispose();
    textFieldNumeroTextController?.dispose();
  }
}
