// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

bool? returnProximaPergunta(
  int indexAtual,
  int totalPerguntas,
) {
  bool retornar = false;
  int limite = totalPerguntas - 1;
  if (indexAtual < limite) {
    retornar = true;
  }
  return retornar;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
