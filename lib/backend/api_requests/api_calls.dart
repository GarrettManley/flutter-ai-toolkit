import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Open AI Group Code

class OpenAIGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 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',
    'Content-Type': 'application/json',
  };
  static ChatCall chatCall = ChatCall();
}

class ChatCall {
  Future<ApiCallResponse> call({
    dynamic? messagesJson,
  }) {
    final messages = _serializeJson(messagesJson);
    final body = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${messages}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chat',
      apiUrl: '${OpenAIGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        ...OpenAIGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Open AI Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
