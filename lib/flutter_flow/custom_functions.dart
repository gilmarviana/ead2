import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? base64ToPgn(String? imageBase64) {
  if (imageBase64 == null) {
    return null;
  }
  return 'data:image/png;base64,' + imageBase64;
}

String? returnAtualPergunta(
  int indexAtual,
  List<String> perguntas,
) {
  return perguntas[indexAtual];
}

bool? isAprovado(
  int totalAcertos,
  int totalPerguntas,
) {
  double necessario = totalPerguntas * 0.6;
  bool isAprovado = false;
  if (totalAcertos >= necessario) {
    isAprovado = true;
  } else {
    isAprovado = false;
  }
  return isAprovado;
}

double? returnSomaTotal(
  List<dynamic> listaPrecos,
  int totalProdutos,
) {
  double somaTotal = 0;
  for (int i = 0; i < totalProdutos; i++) {
    somaTotal = somaTotal + listaPrecos[i];
  }
  return somaTotal;
}
