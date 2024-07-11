// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart'; // Importação do pacote para selecionar imagens
import 'dart:convert'; // Importação do pacote para codificar/decodificar dados em base64

final ImagePicker _picker = ImagePicker(); // Instanciação do objeto ImagePicker

Future<String?> uploadFromGallery(BuildContext context) async {
  String?
      error1; // Declaração de uma variável que irá armazenar um possível erro

  try {
    final XFile? photoURL = await _picker.pickImage(
        // Seleciona a imagem com o objeto ImagePicker
        source: ImageSource.gallery,
        maxHeight: 200,
        maxWidth: 200,
        imageQuality: 50);

    if (photoURL != null) {
      var bytes = await photoURL.readAsBytes(); // Converte a imagem em bytes
      Uint8List byteData = Uint8List.fromList(bytes);
      String base64Image = base64.encode(byteData);
      FFAppState().uploadFromGallery =
          base64Image; // Codifica a imagem em base64 e armazena em uma variável
    }
  } catch (e) {
    error1 = e.toString();
    print('error $error1');
  }

  return error1;
}
