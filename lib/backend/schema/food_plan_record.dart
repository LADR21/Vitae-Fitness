import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodPlanRecord extends FirestoreRecord {
  FoodPlanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "BreakFast" field.
  String? _breakFast;
  String get breakFast => _breakFast ?? '';
  bool hasBreakFast() => _breakFast != null;

  // "Collation1" field.
  String? _collation1;
  String get collation1 => _collation1 ?? '';
  bool hasCollation1() => _collation1 != null;

  // "Collation2" field.
  String? _collation2;
  String get collation2 => _collation2 ?? '';
  bool hasCollation2() => _collation2 != null;

  // "Dinner" field.
  String? _dinner;
  String get dinner => _dinner ?? '';
  bool hasDinner() => _dinner != null;

  // "Meal" field.
  String? _meal;
  String get meal => _meal ?? '';
  bool hasMeal() => _meal != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as String?;
    _breakFast = snapshotData['BreakFast'] as String?;
    _collation1 = snapshotData['Collation1'] as String?;
    _collation2 = snapshotData['Collation2'] as String?;
    _dinner = snapshotData['Dinner'] as String?;
    _meal = snapshotData['Meal'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FoodPlan');

  static Stream<FoodPlanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodPlanRecord.fromSnapshot(s));

  static Future<FoodPlanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodPlanRecord.fromSnapshot(s));

  static FoodPlanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodPlanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodPlanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodPlanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodPlanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodPlanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodPlanRecordData({
  String? date,
  String? breakFast,
  String? collation1,
  String? collation2,
  String? dinner,
  String? meal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'BreakFast': breakFast,
      'Collation1': collation1,
      'Collation2': collation2,
      'Dinner': dinner,
      'Meal': meal,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodPlanRecordDocumentEquality implements Equality<FoodPlanRecord> {
  const FoodPlanRecordDocumentEquality();

  @override
  bool equals(FoodPlanRecord? e1, FoodPlanRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.breakFast == e2?.breakFast &&
        e1?.collation1 == e2?.collation1 &&
        e1?.collation2 == e2?.collation2 &&
        e1?.dinner == e2?.dinner &&
        e1?.meal == e2?.meal;
  }

  @override
  int hash(FoodPlanRecord? e) => const ListEquality().hash([
        e?.date,
        e?.breakFast,
        e?.collation1,
        e?.collation2,
        e?.dinner,
        e?.meal
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodPlanRecord;
}
