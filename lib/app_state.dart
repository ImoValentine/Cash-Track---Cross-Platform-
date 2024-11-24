import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentStructureStruct _documentdata = DocumentStructureStruct();
  DocumentStructureStruct get documentdata => _documentdata;
  set documentdata(DocumentStructureStruct value) {
    _documentdata = value;
  }

  void updateDocumentdataStruct(Function(DocumentStructureStruct) updateFn) {
    updateFn(_documentdata);
  }

  String _downloadUrl = '';
  String get downloadUrl => _downloadUrl;
  set downloadUrl(String value) {
    _downloadUrl = value;
  }

  String _Randomstring = '';
  String get Randomstring => _Randomstring;
  set Randomstring(String value) {
    _Randomstring = value;
  }

  String _Usernamedisplaytop = '';
  String get Usernamedisplaytop => _Usernamedisplaytop;
  set Usernamedisplaytop(String value) {
    _Usernamedisplaytop = value;
  }

  String _debtorname = '';
  String get debtorname => _debtorname;
  set debtorname(String value) {
    _debtorname = value;
  }

  String _DebtorEmail = '';
  String get DebtorEmail => _DebtorEmail;
  set DebtorEmail(String value) {
    _DebtorEmail = value;
  }

  String _CtrackRef = '';
  String get CtrackRef => _CtrackRef;
  set CtrackRef(String value) {
    _CtrackRef = value;
  }

  String _debtorSurname = '';
  String get debtorSurname => _debtorSurname;
  set debtorSurname(String value) {
    _debtorSurname = value;
  }

  String _ctrackdebtorstore = '';
  String get ctrackdebtorstore => _ctrackdebtorstore;
  set ctrackdebtorstore(String value) {
    _ctrackdebtorstore = value;
  }

  String _AuthURL = '';
  String get AuthURL => _AuthURL;
  set AuthURL(String value) {
    _AuthURL = value;
  }

  String _Referencetransa = '';
  String get Referencetransa => _Referencetransa;
  set Referencetransa(String value) {
    _Referencetransa = value;
  }

  String _Authcode = '';
  String get Authcode => _Authcode;
  set Authcode(String value) {
    _Authcode = value;
  }
}
