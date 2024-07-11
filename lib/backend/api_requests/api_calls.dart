import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start bAppEuVendo Group Code

class BAppEuVendoGroup {
  static String getBaseUrl() => 'https://sistema.euvendo.app/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
    'Content-Type': 'application/json',
  };
  static GetUsersBCall getUsersBCall = GetUsersBCall();
  static GetOfferBCall getOfferBCall = GetOfferBCall();
  static GetOfferByIdBCall getOfferByIdBCall = GetOfferByIdBCall();
  static PostOfferBCall postOfferBCall = PostOfferBCall();
  static UpdateUserBCall updateUserBCall = UpdateUserBCall();
  static UpdateOfferBCall updateOfferBCall = UpdateOfferBCall();
  static GetLojasBCall getLojasBCall = GetLojasBCall();
  static GetAllTrainingsCall getAllTrainingsCall = GetAllTrainingsCall();
  static GetTrainingByIdCall getTrainingByIdCall = GetTrainingByIdCall();
  static CreateNewTrainingCall createNewTrainingCall = CreateNewTrainingCall();
  static GetCurrentTrainingCall getCurrentTrainingCall =
      GetCurrentTrainingCall();
  static GetCurrentClassCall getCurrentClassCall = GetCurrentClassCall();
  static ConcluirAulaCall concluirAulaCall = ConcluirAulaCall();
  static ConcluirAulaConsultaCall concluirAulaConsultaCall =
      ConcluirAulaConsultaCall();
  static UpdateStatusVendaCall updateStatusVendaCall = UpdateStatusVendaCall();
  static ResetPasswordCall resetPasswordCall = ResetPasswordCall();
  static ChangePassordCall changePassordCall = ChangePassordCall();
  static ChecarAulasCall checarAulasCall = ChecarAulasCall();
  static CriarAulaAvulsaCall criarAulaAvulsaCall = CriarAulaAvulsaCall();
  static DeletarAulaCall deletarAulaCall = DeletarAulaCall();
  static GetAulaUsuarioCall getAulaUsuarioCall = GetAulaUsuarioCall();
  static GetPerguntasCall getPerguntasCall = GetPerguntasCall();
  static GetAlternativasCall getAlternativasCall = GetAlternativasCall();
  static RetornaPerguntasCall retornaPerguntasCall = RetornaPerguntasCall();
  static RetornaAlternativasCall retornaAlternativasCall =
      RetornaAlternativasCall();
  static AcertarAvaliacaoCall acertarAvaliacaoCall = AcertarAvaliacaoCall();
  static ErrarAvaliacaoCall errarAvaliacaoCall = ErrarAvaliacaoCall();
  static RetornarRespostasCall retornarRespostasCall = RetornarRespostasCall();
  static ConcluirAvaliacaoCall concluirAvaliacaoCall = ConcluirAvaliacaoCall();
  static ResetarAvaliacaoCall resetarAvaliacaoCall = ResetarAvaliacaoCall();
  static RetornarAprovadoCall retornarAprovadoCall = RetornarAprovadoCall();
  static TestePlugginCall testePlugginCall = TestePlugginCall();
  static RetornarProdutosIndividualmenteCall
      retornarProdutosIndividualmenteCall =
      RetornarProdutosIndividualmenteCall();
}

class GetUsersBCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUsersB',
      apiUrl: '${baseUrl}/getUsers/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        '_id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user[:].Nome''',
      ));
  String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user[:].authentication.email.email''',
      ));
  String? userCargo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user[:].cargo''',
      ));
  String? userPhone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user[:].telefone''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user[:]._id''',
      ));
  List<String>? userListaLoja(dynamic response) => (getJsonField(
        response,
        r'''$.response.user[:].lista_lojas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? treinamentosConcluidos(dynamic response) => (getJsonField(
        response,
        r'''$.response.user[:].treinamentosConcluidos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? treinamentosIniciados(dynamic response) => getJsonField(
        response,
        r'''$.response.user[:].meus_treinamentos''',
        true,
      ) as List?;
}

class GetOfferBCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getOfferB',
      apiUrl: '${baseUrl}/getOffers',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].Nome_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? statusDesconto(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].status_desconto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? phone(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].numero_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? valorDesconto(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].Valor_desconto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? offerId(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].preco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? lojaId(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].Loja''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.lojaId''',
        true,
      ) as List?;
  List<String>? statusVenda(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].status_venda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagemPNG(dynamic response) => (getJsonField(
        response,
        r'''$.response.lojaId[:].imagePNG''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetOfferByIdBCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getOfferByIdB',
      apiUrl: '${baseUrl}/getofferbyid',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? uniqueId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:]._id''',
      ));
  int? discountValue(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.offer[:].Valor_desconto''',
      ));
  String? discountStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:].status_desconto''',
      ));
  dynamic obs(dynamic response) => getJsonField(
        response,
        r'''$.response.offer[:].Observacoes''',
      );
  dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.response.offer[:].Usuario''',
      );
  String? discountType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:].tipoDesconto''',
      ));
  String? isSold(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:].status_venda''',
      ));
  String? productName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:].Nome_produto''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:].WhatsApp''',
      ));
  String? imagemPNG(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.offer[:].imagePNG''',
      ));
  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.response.offer[:].preco''',
      );
}

class PostOfferBCall {
  Future<ApiCallResponse> call({
    String? clientName = '',
    String? clientPhone = '',
    double? productPrice,
    String? imagePNG = '',
    String? loja = '',
    String? discountStatus = 'Solicitado',
    String? userId = '',
    String? avaliacaoCliente = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "loja": "${loja}",
  "clientName": "${clientName}",
  "numero_produto": "${clientPhone}",
  "productPrice": ${productPrice},
  "status_desconto": "${discountStatus}",
  "user": "${userId}",
  "clientPhone": "${clientPhone}",
  "imagePNG": "${imagePNG}",
  "avaliacaoAtendimento": "${avaliacaoCliente}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postOfferB',
      apiUrl: '${baseUrl}/postnewoffer',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserBCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? userphone = '',
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "userphone": "${userphone}",
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserB',
      apiUrl: '${baseUrl}/updateuser',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateOfferBCall {
  Future<ApiCallResponse> call({
    int? discountvalue,
    String? discountstatus = '',
    String? id = '',
    String? discounttype = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${id}",
  "discountvalue": ${discountvalue},
  "discountstatus": "${discountstatus}",
  "discounttype": "${discounttype}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateOfferB',
      apiUrl: '${baseUrl}/updateCurrentOffer',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLojasBCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getLojasB',
      apiUrl: '${baseUrl}/getLojas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nomeLoja(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.listaLoja[:].NomeLoja''',
      ));
  String? currentLojaId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.listaLoja[:]._id''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.listaLoja''',
        true,
      ) as List?;
  bool? isAtivo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.listaLoja[:].ativo''',
      ));
}

class GetAllTrainingsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllTrainings',
      apiUrl: '${baseUrl}/getTraining',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? trainingName(dynamic response) => (getJsonField(
        response,
        r'''$.response.treinamentos[:].Nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? trainingDesc(dynamic response) => (getJsonField(
        response,
        r'''$.response.treinamentos[:].Descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? traininId(dynamic response) => (getJsonField(
        response,
        r'''$.response.treinamentos[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.treinamentos''',
        true,
      ) as List?;
}

class GetTrainingByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getTrainingById',
      apiUrl: '${baseUrl}/getTrainingById',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? trainingUser(dynamic response) => (getJsonField(
        response,
        r'''$.response.training[:].Usuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? trainingId(dynamic response) => (getJsonField(
        response,
        r'''$.response.training[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? trainingName(dynamic response) => (getJsonField(
        response,
        r'''$.response.training[:].Treinamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.training''',
        true,
      ) as List?;
  dynamic isCompleto(dynamic response) => getJsonField(
        response,
        r'''$.response.training[:].isCompleto''',
      );
}

class CreateNewTrainingCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createNewTraining',
      apiUrl: '${baseUrl}/postNewTrainingById',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCurrentTrainingCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCurrentTraining',
      apiUrl: '${baseUrl}/getCurrentTraining',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? currentTrainingName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.treinamentos[:].Nome''',
      ));
  String? currentTrainingId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.treinamentos[:]._id''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.treinamentos''',
        true,
      ) as List?;
  List<String>? usuarioConcluidos(dynamic response) => (getJsonField(
        response,
        r'''$.response.treinamentos[:].usuariosConcluidos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic cargaHoraria(dynamic response) => getJsonField(
        response,
        r'''$.response.treinamentos[:].cargaHoraria''',
      );
}

class GetCurrentClassCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCurrentClass',
      apiUrl: '${baseUrl}/getCurrentClass',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? className(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:].Nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? urlAula(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:].url_Aula''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? classId(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? treinamentoId(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:].treinamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.aulas''',
        true,
      ) as List?;
  dynamic usuriosConcluidos(dynamic response) => getJsonField(
        response,
        r'''$.response.aulas[:].usuariosConcluidos''',
      );
}

class ConcluirAulaCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? aula = '',
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "aula": "${aula}",
  "treinamento": "${treinamento}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'concluirAula',
      apiUrl: '${baseUrl}/concluirAula',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConcluirAulaConsultaCall {
  Future<ApiCallResponse> call({
    String? user = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'concluirAulaConsulta',
      apiUrl: '${baseUrl}/concluirAulaConsulta',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'user': user,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:].Nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? aulaId(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? treinamentoId(dynamic response) => (getJsonField(
        response,
        r'''$.response.aulas[:].treinamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic usuariosConcluidos(dynamic response) => getJsonField(
        response,
        r'''$.response.aulas[:].usuariosConcluidos''',
      );
}

class UpdateStatusVendaCall {
  Future<ApiCallResponse> call({
    String? statusVenda = '',
    String? id = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status_venda": "${statusVenda}",
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateStatusVenda',
      apiUrl: '${baseUrl}/updateStatusVenda',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resetPassword',
      apiUrl: '${baseUrl}/resetPassword',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePassordCall {
  Future<ApiCallResponse> call({
    String? novaSenha = '',
    String? confirmacao = '',
    String? id = '',
    String? antigaSenha = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "novaSenha": "${novaSenha}",
  "confirmacao": "${confirmacao}",
  "id": "${id}",
  "antigaSenha": "${antigaSenha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassord',
      apiUrl: '${baseUrl}/changePassword',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChecarAulasCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? aula = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "aula": "${aula}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checarAulas',
      apiUrl: '${baseUrl}/checarAulas',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarAulaAvulsaCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? aula = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "aula": "${aula}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarAulaAvulsa',
      apiUrl: '${baseUrl}/criarAulaAvulsa',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarAulaCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? aula = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "aula": "${aula}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deletarAula',
      apiUrl: '${baseUrl}/deletarAula',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAulaUsuarioCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAulaUsuario',
      apiUrl: '${baseUrl}/getAulaUsuario',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'user': user,
        'treinamento': treinamento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.aulaUsuario''',
        true,
      ) as List?;
}

class GetPerguntasCall {
  Future<ApiCallResponse> call({
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetPerguntas',
      apiUrl: '${baseUrl}/GetPerguntas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'treinamento': treinamento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? perguntaId(dynamic response) => (getJsonField(
        response,
        r'''$.response.pergunta[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? perguntas(dynamic response) => (getJsonField(
        response,
        r'''$.response.pergunta[:].pergunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? perguntaResult(dynamic response) => getJsonField(
        response,
        r'''$.response.pergunta''',
        true,
      ) as List?;
  int? totalPerguntas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.total''',
      ));
}

class GetAlternativasCall {
  Future<ApiCallResponse> call({
    String? perguntaId = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAlternativas',
      apiUrl: '${baseUrl}/GetAlternativas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'pergunta': perguntaId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? result(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativas''',
        true,
      ) as List?;
  List<String>? alternativaId(dynamic response) => (getJsonField(
        response,
        r'''$.response.alternativas[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic alternativa1(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativas[:].alternativa1''',
      );
  dynamic alternativa2(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativas[:].alternativa2''',
      );
  dynamic alternativa3(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativas[:].alternativa3''',
      );
  dynamic alternativaCorreta(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativas[:].alternativaCorreta''',
      );
  dynamic perguntaId(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativas[:].pergunta''',
      );
}

class RetornaPerguntasCall {
  Future<ApiCallResponse> call({
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retornaPerguntas',
      apiUrl: '${baseUrl}/retornaPerguntas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'treinamento': treinamento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? perguntaText(dynamic response) => (getJsonField(
        response,
        r'''$.response.pergunta[:].pergunta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? treinamentoId(dynamic response) => (getJsonField(
        response,
        r'''$.response.pergunta[:].treinamento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? perguntasTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.total''',
      ));
  List<String>? perguntaId(dynamic response) => (getJsonField(
        response,
        r'''$.response.pergunta[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RetornaAlternativasCall {
  Future<ApiCallResponse> call({
    String? pergunta = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retornaAlternativas',
      apiUrl: '${baseUrl}/retornaAlternativas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'pergunta': pergunta,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? alternativaA(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.alternativaA''',
      ));
  String? alternativaB(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.alternativaB''',
      ));
  String? alternativaC(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.alternativaC''',
      ));
  String? correta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.correta''',
      ));
  List? response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
        true,
      ) as List?;
  dynamic alternativaD(dynamic response) => getJsonField(
        response,
        r'''$.response.alternativaD''',
      );
}

class AcertarAvaliacaoCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinamento = '',
    String? pergunta = '',
    String? alternativaEscolhida = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "treinamento": "${treinamento}",
  "pergunta": "${pergunta}",
  "alternativaEscolhida": "${alternativaEscolhida}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'acertarAvaliacao',
      apiUrl: '${baseUrl}/acertarAvaliacao',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ErrarAvaliacaoCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinamento = '',
    String? pergunta = '',
    String? alternativaEscolhida = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "treinamento": "${treinamento}",
  "pergunta": "${pergunta}",
  "alternativaEscolhida": "${alternativaEscolhida}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'errarAvaliacao',
      apiUrl: '${baseUrl}/errarAvaliacao',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetornarRespostasCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retornarRespostas',
      apiUrl: '${baseUrl}/retornarRespostas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'user': user,
        'treinamento': treinamento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic totalAcertos(dynamic response) => getJsonField(
        response,
        r'''$.response.totalAcertos''',
      );
}

class ConcluirAvaliacaoCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "treinamento": "${treinamento}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'concluirAvaliacao',
      apiUrl: '${baseUrl}/concluirAvaliacao',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetarAvaliacaoCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinametno = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user": "${user}",
  "treinamento": "${treinametno}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resetarAvaliacao',
      apiUrl: '${baseUrl}/resetarAvaliacao',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetornarAprovadoCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? treinamento = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retornarAprovado',
      apiUrl: '${baseUrl}/retornarAprovado',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'user': user,
        'treinamento': treinamento,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic isAprovado(dynamic response) => getJsonField(
        response,
        r'''$.response.isAprovado''',
      );
}

class TestePlugginCall {
  Future<ApiCallResponse> call({
    String? oferta = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "oferta": "${oferta}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'testePluggin',
      apiUrl: '${baseUrl}/testePluggin',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetornarProdutosIndividualmenteCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? loja = '',
  }) async {
    final baseUrl = BAppEuVendoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retornarProdutosIndividualmente',
      apiUrl: '${baseUrl}/retornoSomaDePrecos',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ec4dcd7089a06c130a325c5267575123',
        'Content-Type': 'application/json',
      },
      params: {
        'user': user,
        'loja': loja,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? somaDeVendidos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.somaPrecos''',
      ));
  dynamic totaisAprovados(dynamic response) => getJsonField(
        response,
        r'''$.response.itensTotaisAprovados''',
      );
  dynamic totalEmpacado(dynamic response) => getJsonField(
        response,
        r'''$.response.totalEmpacado''',
      );
}

/// End bAppEuVendo Group Code

class AuthLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authLogin',
      apiUrl: 'https://sistema.euvendo.app/api/1.1/wf/appLogin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static int? expireToken(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.expires''',
      ));
}

class UserLogOutCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'userLogOut',
      apiUrl: 'https://sistema.euvendo.app/api/1.1/wf/applogout',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOffersAllCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOffersAll',
      apiUrl: 'https://sistema.euvendo.app/api/1.1/obj/oferta',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'limit': 999,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nomeCliente(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].Nome_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? precoProduto(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].preco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? statusVenda(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].status_venda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cellCliente(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].WhatsApp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? statusDesconto(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].status_desconto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagemProduto(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].imagePNG''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? idProduto(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  static List<String>? lojaID(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].Loja''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? criadorDaOferta(dynamic response) => getJsonField(
        response,
        r'''$.response.results[:].Usuario''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
