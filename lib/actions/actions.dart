import '/backend/backend.dart';
import 'package:flutter/material.dart';

Future contract(BuildContext context) async {
  await AgreementsRecord.collection.doc().set(createAgreementsRecordData(
        name: '',
      ));
}
