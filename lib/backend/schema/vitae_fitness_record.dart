import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VitaeFitnessRecord extends FirestoreRecord {
  VitaeFitnessRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  void _initializeFields() {}

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VitaeFitness');

  static Stream<VitaeFitnessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VitaeFitnessRecord.fromSnapshot(s));

  static Future<VitaeFitnessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VitaeFitnessRecord.fromSnapshot(s));

  static VitaeFitnessRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VitaeFitnessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VitaeFitnessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VitaeFitnessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VitaeFitnessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VitaeFitnessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVitaeFitnessRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class VitaeFitnessRecordDocumentEquality
    implements Equality<VitaeFitnessRecord> {
  const VitaeFitnessRecordDocumentEquality();

  @override
  bool equals(VitaeFitnessRecord? e1, VitaeFitnessRecord? e2) {
    return true;
  }

  @override
  int hash(VitaeFitnessRecord? e) => const ListEquality().hash([]);

  @override
  bool isValidKey(Object? o) => o is VitaeFitnessRecord;
}
