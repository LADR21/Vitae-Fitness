import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkPlanRecord extends FirestoreRecord {
  WorkPlanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "Media" field.
  String? _media;
  String get media => _media ?? '';
  bool hasMedia() => _media != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _date = snapshotData['Date'] as String?;
    _media = snapshotData['Media'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WorkPlan');

  static Stream<WorkPlanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkPlanRecord.fromSnapshot(s));

  static Future<WorkPlanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkPlanRecord.fromSnapshot(s));

  static WorkPlanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkPlanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkPlanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkPlanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkPlanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkPlanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkPlanRecordData({
  String? name,
  String? description,
  String? date,
  String? media,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Description': description,
      'Date': date,
      'Media': media,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkPlanRecordDocumentEquality implements Equality<WorkPlanRecord> {
  const WorkPlanRecordDocumentEquality();

  @override
  bool equals(WorkPlanRecord? e1, WorkPlanRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date &&
        e1?.media == e2?.media;
  }

  @override
  int hash(WorkPlanRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.date, e?.media]);

  @override
  bool isValidKey(Object? o) => o is WorkPlanRecord;
}
