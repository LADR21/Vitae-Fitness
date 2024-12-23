// ignore_for_file: unnecessary_import

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "YearOld" field.
  int? _yearOld;
  int get yearOld => _yearOld ?? 0;
  bool hasYearOld() => _yearOld != null;

  // "Height" field.
  int? _height;
  int get height => _height ?? 0;
  bool hasHeight() => _height != null;

  // "Weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  bool hasWeight() => _weight != null;

  // "StreetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  bool hasStreetAddress() => _streetAddress != null;

  // "Membership" field.
  String? _membership;
  String get membership => _membership ?? '';
  bool hasMembership() => _membership != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _lastName = snapshotData['Last Name'] as String?;
    _yearOld = castToType<int>(snapshotData['Year Old']);
    _height = castToType<int>(snapshotData['Height']);
    _weight = castToType<int>(snapshotData['Weight']);
    _streetAddress = snapshotData['Street Address'] as String?;
    _membership = snapshotData['Membership'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? name,
  String? lastName,
  int? yearOld,
  int? height,
  int? weight,
  String? streetAddress,
  String? membership,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'LastName': lastName,
      'YearOld': yearOld,
      'Height': height,
      'Weight': weight,
      'StreetAddress': streetAddress,
      'Membership': membership,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lastName == e2?.lastName &&
        e1?.yearOld == e2?.yearOld &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.streetAddress == e2?.streetAddress &&
        e1?.membership == e2?.membership;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lastName,
        e?.yearOld,
        e?.height,
        e?.weight,
        e?.streetAddress,
        e?.membership
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
