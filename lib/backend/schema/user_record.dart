import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
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

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _lastName = snapshotData['LastName'] as String?;
    _yearOld = castToType<int>(snapshotData['YearOld']);
    _height = castToType<int>(snapshotData['Height']);
    _weight = castToType<int>(snapshotData['Weight']);
    _streetAddress = snapshotData['StreetAddress'] as String?;
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'LastName': lastName,
      'YearOld': yearOld,
      'Height': height,
      'Weight': weight,
      'StreetAddress': streetAddress,
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
        e1?.streetAddress == e2?.streetAddress;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lastName,
        e?.yearOld,
        e?.height,
        e?.weight,
        e?.streetAddress
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
