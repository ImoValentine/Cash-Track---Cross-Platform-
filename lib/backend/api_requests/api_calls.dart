import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Paystack Group Code

class PaystackGroup {
  static String getBaseUrl() => 'https://api.paystack.co';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer sk_test_5b952595cca8819653a81f1bf7ff71b9e2797287',
  };
  static CreatePaystackCustomerCall createPaystackCustomerCall =
      CreatePaystackCustomerCall();
  static CreatePaystackSubscriptionCall createPaystackSubscriptionCall =
      CreatePaystackSubscriptionCall();
  static TranactionInitializeCall tranactionInitializeCall =
      TranactionInitializeCall();
  static VerifyTransactionCall verifyTransactionCall = VerifyTransactionCall();
}

class CreatePaystackCustomerCall {
  Future<ApiCallResponse> call({
    String? customerEmail = '',
    String? firstName = '',
    String? lastName = '',
  }) async {
    final baseUrl = PaystackGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(customerEmail)}",
  "first_name": "${escapeStringForJson(firstName)}",
  "last_name": "${escapeStringForJson(lastName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaystackCustomer',
      apiUrl: '$baseUrl/customer',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer sk_test_5b952595cca8819653a81f1bf7ff71b9e2797287',
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

  String? customercode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customer_code''',
      ));
}

class CreatePaystackSubscriptionCall {
  Future<ApiCallResponse> call({
    String? customerEmail = '',
    String? plan = '',
    String? authorozation = '',
  }) async {
    final baseUrl = PaystackGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "customer": "${escapeStringForJson(customerEmail)}",
  "plan": "${escapeStringForJson(plan)}",
  "authorization": "${escapeStringForJson(authorozation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaystackSubscription',
      apiUrl: '$baseUrl/subscription',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer sk_test_5b952595cca8819653a81f1bf7ff71b9e2797287',
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

class TranactionInitializeCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? amount = '',
  }) async {
    final baseUrl = PaystackGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "amount": "${escapeStringForJson(amount)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Tranaction Initialize',
      apiUrl: '$baseUrl/transaction/initialize',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer sk_test_5b952595cca8819653a81f1bf7ff71b9e2797287',
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

  String? referenceT(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.reference''',
      ));
  String? authoURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.authorization_url''',
      ));
}

class VerifyTransactionCall {
  Future<ApiCallResponse> call({
    String? reference1 = '[appState.Referencetransa]',
  }) async {
    final baseUrl = PaystackGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Verify Transaction ',
      apiUrl: '$baseUrl/transaction/verify/$reference1',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer sk_test_5b952595cca8819653a81f1bf7ff71b9e2797287',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.authorization.authorization_code''',
      ));
}

/// End Paystack Group Code

class DocusealSubmissionCall {
  static Future<ApiCallResponse> call({
    String? debtorName = '',
    String? debtoremail = '',
    String? creditorName = '',
    String? creditoremail = '',
    String? amount = '',
    String? transactionDate = '',
    String? settlementDate = '',
    String? debtorSurname = '',
  }) async {
    final ffApiRequestBody = '''
{
  "template_id": 322392,
  "send_email": true,
  "order": "random",
  "submitters": [
    {
      "role": "Debtor",
      "email": "$debtoremail",
      "fields": [
        {
          "name": "debtor_name",
          "default_value": "$debtorName",
          "readonly": true
        },
        {
          "name": "debtor_surname",
          "default_value": "$debtorSurname",
          "readonly": true
        }
      ]
    },
    {
      "role": "Creditor",
      "email": "$creditoremail",
      "fields": [
        {
          "name": "creditor_name",
          "default_value": "$creditorName",
          "readonly": true
        },
        {
          "name": "transaction_date",
          "default_value": "$transactionDate",
          "readonly": true
        },
        {
          "name": "settlement_date",
          "default_value": "$settlementDate",
          "readonly": true
        },
        {
          "name": "Amount",
          "default_value": "$amount",
          "readonly": true
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Docuseal submission ',
      apiUrl: 'https://api.docuseal.com/submissions',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json',
        'X-Auth-Token': 'favV28kgKofRRbSjLAH89FBBrocRXLfBJNmh1bkx497',
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

class StripeSubscriptionCreateCustomerCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'stripeSubscriptionCreateCustomer',
      apiUrl: 'https://api.stripe.com/v1/customers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51QHStlCZvanZiBlX720m3uEWbV67zZPyNhE3IRsNMylrzrFa8vIG0Gdts4cbvVw7icXcBLXVkEV9R3pxCxrNbML200BPxP0QYq',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? stripecusID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
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
  if (item is DocumentReference) {
    return item.path;
  }
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
