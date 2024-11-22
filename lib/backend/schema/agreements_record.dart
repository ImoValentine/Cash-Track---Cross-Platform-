import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgreementsRecord extends FirestoreRecord {
  AgreementsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ctrackref" field.
  String? _ctrackref;
  String get ctrackref => _ctrackref ?? '';
  bool hasCtrackref() => _ctrackref != null;

  // "Creditor_country" field.
  String? _creditorCountry;
  String get creditorCountry => _creditorCountry ?? '';
  bool hasCreditorCountry() => _creditorCountry != null;

  // "Creditor_ID_confirm" field.
  int? _creditorIDConfirm;
  int get creditorIDConfirm => _creditorIDConfirm ?? 0;
  bool hasCreditorIDConfirm() => _creditorIDConfirm != null;

  // "debtor_name" field.
  String? _debtorName;
  String get debtorName => _debtorName ?? '';
  bool hasDebtorName() => _debtorName != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "submissionID" field.
  String? _submissionID;
  String get submissionID => _submissionID ?? '';
  bool hasSubmissionID() => _submissionID != null;

  // "useremail" field.
  String? _useremail;
  String get useremail => _useremail ?? '';
  bool hasUseremail() => _useremail != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "client_cell" field.
  String? _clientCell;
  String get clientCell => _clientCell ?? '';
  bool hasClientCell() => _clientCell != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _ctrackref = snapshotData['ctrackref'] as String?;
    _creditorCountry = snapshotData['Creditor_country'] as String?;
    _creditorIDConfirm = castToType<int>(snapshotData['Creditor_ID_confirm']);
    _debtorName = snapshotData['debtor_name'] as String?;
    _amount = snapshotData['Amount'] as String?;
    _submissionID = snapshotData['submissionID'] as String?;
    _useremail = snapshotData['useremail'] as String?;
    _surname = snapshotData['surname'] as String?;
    _clientCell = snapshotData['client_cell'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Agreements');

  static Stream<AgreementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgreementsRecord.fromSnapshot(s));

  static Future<AgreementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgreementsRecord.fromSnapshot(s));

  static AgreementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgreementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgreementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgreementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgreementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgreementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgreementsRecordData({
  String? name,
  String? ctrackref,
  String? creditorCountry,
  int? creditorIDConfirm,
  String? debtorName,
  String? amount,
  String? submissionID,
  String? useremail,
  String? surname,
  String? clientCell,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'ctrackref': ctrackref,
      'Creditor_country': creditorCountry,
      'Creditor_ID_confirm': creditorIDConfirm,
      'debtor_name': debtorName,
      'Amount': amount,
      'submissionID': submissionID,
      'useremail': useremail,
      'surname': surname,
      'client_cell': clientCell,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgreementsRecordDocumentEquality implements Equality<AgreementsRecord> {
  const AgreementsRecordDocumentEquality();

  @override
  bool equals(AgreementsRecord? e1, AgreementsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.ctrackref == e2?.ctrackref &&
        e1?.creditorCountry == e2?.creditorCountry &&
        e1?.creditorIDConfirm == e2?.creditorIDConfirm &&
        e1?.debtorName == e2?.debtorName &&
        e1?.amount == e2?.amount &&
        e1?.submissionID == e2?.submissionID &&
        e1?.useremail == e2?.useremail &&
        e1?.surname == e2?.surname &&
        e1?.clientCell == e2?.clientCell;
  }

  @override
  int hash(AgreementsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.ctrackref,
        e?.creditorCountry,
        e?.creditorIDConfirm,
        e?.debtorName,
        e?.amount,
        e?.submissionID,
        e?.useremail,
        e?.surname,
        e?.clientCell
      ]);

  @override
  bool isValidKey(Object? o) => o is AgreementsRecord;
}
