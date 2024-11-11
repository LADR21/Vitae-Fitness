import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressRecord extends FirestoreRecord {
  ProgressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "User" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "Mounth" field.
  String? _mounth;
  String get mounth => _mounth ?? '';
  bool hasMounth() => _mounth != null;

  // "Weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "Fat" field.
  String? _fat;
  String get fat => _fat ?? '';
  bool hasFat() => _fat != null;

  // "Force" field.
  String? _force;
  String get force => _force ?? '';
  bool hasForce() => _force != null;

  // "Height" field.
  int? _height;
  int get height => _height ?? 0;
  bool hasHeight() => _height != null;

  void _initializeFields() {
    _user = snapshotData['User'] as String?;
    _mounth = snapshotData['Mounth'] as String?;
    _weight = snapshotData['Weight'] as String?;
    _fat = snapshotData['Fat'] as String?;
    _force = snapshotData['Force'] as String?;
    _height = castToType<int>(snapshotData['Height']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Progress');

  static Stream<ProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgressRecord.fromSnapshot(s));

  static Future<ProgressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgressRecord.fromSnapshot(s));

  static ProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgressRecordData({
  String? user,
  String? mounth,
  String? weight,
  String? fat,
  String? force,
  int? height,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User': user,
      'Mounth': mounth,
      'Weight': weight,
      'Fat': fat,
      'Force': force,
      'Height': height,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgressRecordDocumentEquality implements Equality<ProgressRecord> {
  const ProgressRecordDocumentEquality();

  @override
  bool equals(ProgressRecord? e1, ProgressRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.mounth == e2?.mounth &&
        e1?.weight == e2?.weight &&
        e1?.fat == e2?.fat &&
        e1?.force == e2?.force &&
        e1?.height == e2?.height;
  }

  @override
  int hash(ProgressRecord? e) => const ListEquality()
      .hash([e?.user, e?.mounth, e?.weight, e?.fat, e?.force, e?.height]);

  @override
  bool isValidKey(Object? o) => o is ProgressRecord;
}
