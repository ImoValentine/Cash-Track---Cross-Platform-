import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignedAgreementsRecord extends FirestoreRecord {
  SignedAgreementsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "date_loaned" field.
  String? _dateLoaned;
  String get dateLoaned => _dateLoaned ?? '';
  bool hasDateLoaned() => _dateLoaned != null;

  // "payback_date" field.
  String? _paybackDate;
  String get paybackDate => _paybackDate ?? '';
  bool hasPaybackDate() => _paybackDate != null;

  // "ctack_creditor" field.
  String? _ctackCreditor;
  String get ctackCreditor => _ctackCreditor ?? '';
  bool hasCtackCreditor() => _ctackCreditor != null;

  // "debtor_name" field.
  String? _debtorName;
  String get debtorName => _debtorName ?? '';
  bool hasDebtorName() => _debtorName != null;

  // "creditor_name" field.
  String? _creditorName;
  String get creditorName => _creditorName ?? '';
  bool hasCreditorName() => _creditorName != null;

  // "ctrack_debtor" field.
  String? _ctrackDebtor;
  String get ctrackDebtor => _ctrackDebtor ?? '';
  bool hasCtrackDebtor() => _ctrackDebtor != null;

  void _initializeFields() {
    _amount = snapshotData['amount'] as String?;
    _dateLoaned = snapshotData['date_loaned'] as String?;
    _paybackDate = snapshotData['payback_date'] as String?;
    _ctackCreditor = snapshotData['ctack_creditor'] as String?;
    _debtorName = snapshotData['debtor_name'] as String?;
    _creditorName = snapshotData['creditor_name'] as String?;
    _ctrackDebtor = snapshotData['ctrack_debtor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('signed_agreements');

  static Stream<SignedAgreementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignedAgreementsRecord.fromSnapshot(s));

  static Future<SignedAgreementsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SignedAgreementsRecord.fromSnapshot(s));

  static SignedAgreementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SignedAgreementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignedAgreementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignedAgreementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignedAgreementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignedAgreementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignedAgreementsRecordData({
  String? amount,
  String? dateLoaned,
  String? paybackDate,
  String? ctackCreditor,
  String? debtorName,
  String? creditorName,
  String? ctrackDebtor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'date_loaned': dateLoaned,
      'payback_date': paybackDate,
      'ctack_creditor': ctackCreditor,
      'debtor_name': debtorName,
      'creditor_name': creditorName,
      'ctrack_debtor': ctrackDebtor,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignedAgreementsRecordDocumentEquality
    implements Equality<SignedAgreementsRecord> {
  const SignedAgreementsRecordDocumentEquality();

  @override
  bool equals(SignedAgreementsRecord? e1, SignedAgreementsRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.dateLoaned == e2?.dateLoaned &&
        e1?.paybackDate == e2?.paybackDate &&
        e1?.ctackCreditor == e2?.ctackCreditor &&
        e1?.debtorName == e2?.debtorName &&
        e1?.creditorName == e2?.creditorName &&
        e1?.ctrackDebtor == e2?.ctrackDebtor;
  }

  @override
  int hash(SignedAgreementsRecord? e) => const ListEquality().hash([
        e?.amount,
        e?.dateLoaned,
        e?.paybackDate,
        e?.ctackCreditor,
        e?.debtorName,
        e?.creditorName,
        e?.ctrackDebtor
      ]);

  @override
  bool isValidKey(Object? o) => o is SignedAgreementsRecord;
}
