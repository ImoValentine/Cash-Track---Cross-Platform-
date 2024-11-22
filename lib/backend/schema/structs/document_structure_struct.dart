// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DocumentStructureStruct extends FFFirebaseStruct {
  DocumentStructureStruct({
    String? creditorName,
    String? debtorName,
    String? transactionDate,
    String? settlementDate,
    String? amount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _creditorName = creditorName,
        _debtorName = debtorName,
        _transactionDate = transactionDate,
        _settlementDate = settlementDate,
        _amount = amount,
        super(firestoreUtilData);

  // "creditor_name" field.
  String? _creditorName;
  String get creditorName => _creditorName ?? '';
  set creditorName(String? val) => _creditorName = val;

  bool hasCreditorName() => _creditorName != null;

  // "debtor_name" field.
  String? _debtorName;
  String get debtorName => _debtorName ?? '';
  set debtorName(String? val) => _debtorName = val;

  bool hasDebtorName() => _debtorName != null;

  // "transaction_date" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "settlement_date" field.
  String? _settlementDate;
  String get settlementDate => _settlementDate ?? '';
  set settlementDate(String? val) => _settlementDate = val;

  bool hasSettlementDate() => _settlementDate != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  static DocumentStructureStruct fromMap(Map<String, dynamic> data) =>
      DocumentStructureStruct(
        creditorName: data['creditor_name'] as String?,
        debtorName: data['debtor_name'] as String?,
        transactionDate: data['transaction_date'] as String?,
        settlementDate: data['settlement_date'] as String?,
        amount: data['Amount'] as String?,
      );

  static DocumentStructureStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentStructureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'creditor_name': _creditorName,
        'debtor_name': _debtorName,
        'transaction_date': _transactionDate,
        'settlement_date': _settlementDate,
        'Amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'creditor_name': serializeParam(
          _creditorName,
          ParamType.String,
        ),
        'debtor_name': serializeParam(
          _debtorName,
          ParamType.String,
        ),
        'transaction_date': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'settlement_date': serializeParam(
          _settlementDate,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentStructureStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DocumentStructureStruct(
        creditorName: deserializeParam(
          data['creditor_name'],
          ParamType.String,
          false,
        ),
        debtorName: deserializeParam(
          data['debtor_name'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transaction_date'],
          ParamType.String,
          false,
        ),
        settlementDate: deserializeParam(
          data['settlement_date'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentStructureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentStructureStruct &&
        creditorName == other.creditorName &&
        debtorName == other.debtorName &&
        transactionDate == other.transactionDate &&
        settlementDate == other.settlementDate &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [creditorName, debtorName, transactionDate, settlementDate, amount]);
}

DocumentStructureStruct createDocumentStructureStruct({
  String? creditorName,
  String? debtorName,
  String? transactionDate,
  String? settlementDate,
  String? amount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentStructureStruct(
      creditorName: creditorName,
      debtorName: debtorName,
      transactionDate: transactionDate,
      settlementDate: settlementDate,
      amount: amount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentStructureStruct? updateDocumentStructureStruct(
  DocumentStructureStruct? documentStructure, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    documentStructure
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentStructureStructData(
  Map<String, dynamic> firestoreData,
  DocumentStructureStruct? documentStructure,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (documentStructure == null) {
    return;
  }
  if (documentStructure.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && documentStructure.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentStructureData =
      getDocumentStructureFirestoreData(documentStructure, forFieldValue);
  final nestedData =
      documentStructureData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = documentStructure.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentStructureFirestoreData(
  DocumentStructureStruct? documentStructure, [
  bool forFieldValue = false,
]) {
  if (documentStructure == null) {
    return {};
  }
  final firestoreData = mapToFirestore(documentStructure.toMap());

  // Add any Firestore field values
  documentStructure.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentStructureListFirestoreData(
  List<DocumentStructureStruct>? documentStructures,
) =>
    documentStructures
        ?.map((e) => getDocumentStructureFirestoreData(e, true))
        .toList() ??
    [];
