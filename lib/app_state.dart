import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _perguntaAtual = prefs.getInt('ff_perguntaAtual') ?? _perguntaAtual;
    });
    _safeInit(() {
      _certificado = prefs.getBool('ff_certificado') ?? _certificado;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _tokenAPI = '';
  String get tokenAPI => _tokenAPI;
  set tokenAPI(String value) {
    _tokenAPI = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  String _userEmail = '';
  String get userEmail => _userEmail;
  set userEmail(String value) {
    _userEmail = value;
  }

  String _userPhone = '';
  String get userPhone => _userPhone;
  set userPhone(String value) {
    _userPhone = value;
  }

  String _userCargo = '';
  String get userCargo => _userCargo;
  set userCargo(String value) {
    _userCargo = value;
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
  }

  String _currentLojaId = '';
  String get currentLojaId => _currentLojaId;
  set currentLojaId(String value) {
    _currentLojaId = value;
  }

  String _currentOffer = '';
  String get currentOffer => _currentOffer;
  set currentOffer(String value) {
    _currentOffer = value;
  }

  List<String> _listaLojaId = [];
  List<String> get listaLojaId => _listaLojaId;
  set listaLojaId(List<String> value) {
    _listaLojaId = value;
  }

  void addToListaLojaId(String value) {
    listaLojaId.add(value);
  }

  void removeFromListaLojaId(String value) {
    listaLojaId.remove(value);
  }

  void removeAtIndexFromListaLojaId(int index) {
    listaLojaId.removeAt(index);
  }

  void updateListaLojaIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaLojaId[index] = updateFn(_listaLojaId[index]);
  }

  void insertAtIndexInListaLojaId(int index, String value) {
    listaLojaId.insert(index, value);
  }

  String _currentTrainingId = '';
  String get currentTrainingId => _currentTrainingId;
  set currentTrainingId(String value) {
    _currentTrainingId = value;
  }

  String _currentClasses = '';
  String get currentClasses => _currentClasses;
  set currentClasses(String value) {
    _currentClasses = value;
  }

  String _classesUrl = '';
  String get classesUrl => _classesUrl;
  set classesUrl(String value) {
    _classesUrl = value;
  }

  String _uploadFromGallery = '';
  String get uploadFromGallery => _uploadFromGallery;
  set uploadFromGallery(String value) {
    _uploadFromGallery = value;
  }

  List<String> _imagensSVG = [];
  List<String> get imagensSVG => _imagensSVG;
  set imagensSVG(List<String> value) {
    _imagensSVG = value;
  }

  void addToImagensSVG(String value) {
    imagensSVG.add(value);
  }

  void removeFromImagensSVG(String value) {
    imagensSVG.remove(value);
  }

  void removeAtIndexFromImagensSVG(int index) {
    imagensSVG.removeAt(index);
  }

  void updateImagensSVGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imagensSVG[index] = updateFn(_imagensSVG[index]);
  }

  void insertAtIndexInImagensSVG(int index, String value) {
    imagensSVG.insert(index, value);
  }

  String _imagesList = '';
  String get imagesList => _imagesList;
  set imagesList(String value) {
    _imagesList = value;
  }

  int _perguntaAtual = 0;
  int get perguntaAtual => _perguntaAtual;
  set perguntaAtual(int value) {
    _perguntaAtual = value;
    prefs.setInt('ff_perguntaAtual', value);
  }

  List<String> _perguntas = [];
  List<String> get perguntas => _perguntas;
  set perguntas(List<String> value) {
    _perguntas = value;
  }

  void addToPerguntas(String value) {
    perguntas.add(value);
  }

  void removeFromPerguntas(String value) {
    perguntas.remove(value);
  }

  void removeAtIndexFromPerguntas(int index) {
    perguntas.removeAt(index);
  }

  void updatePerguntasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    perguntas[index] = updateFn(_perguntas[index]);
  }

  void insertAtIndexInPerguntas(int index, String value) {
    perguntas.insert(index, value);
  }

  String _alternativaSelecionada = '';
  String get alternativaSelecionada => _alternativaSelecionada;
  set alternativaSelecionada(String value) {
    _alternativaSelecionada = value;
  }

  bool _aulaConcluida = false;
  bool get aulaConcluida => _aulaConcluida;
  set aulaConcluida(bool value) {
    _aulaConcluida = value;
  }

  String _cargaHoraria = '';
  String get cargaHoraria => _cargaHoraria;
  set cargaHoraria(String value) {
    _cargaHoraria = value;
  }

  String _trainingName = '';
  String get trainingName => _trainingName;
  set trainingName(String value) {
    _trainingName = value;
  }

  bool _certificado = false;
  bool get certificado => _certificado;
  set certificado(bool value) {
    _certificado = value;
    prefs.setBool('ff_certificado', value);
  }

  bool _isCertificado = false;
  bool get isCertificado => _isCertificado;
  set isCertificado(bool value) {
    _isCertificado = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
