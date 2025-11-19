import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClimbsRecord extends FirestoreRecord {
  ClimbsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _count = castToType<int>(snapshotData['count']);
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('climbs');

  static Stream<ClimbsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClimbsRecord.fromSnapshot(s));

  static Future<ClimbsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClimbsRecord.fromSnapshot(s));

  static ClimbsRecord fromSnapshot(DocumentSnapshot snapshot) => ClimbsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClimbsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClimbsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClimbsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClimbsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClimbsRecordData({
  String? name,
  int? count,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'count': count,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClimbsRecordDocumentEquality implements Equality<ClimbsRecord> {
  const ClimbsRecordDocumentEquality();

  @override
  bool equals(ClimbsRecord? e1, ClimbsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.count == e2?.count &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(ClimbsRecord? e) =>
      const ListEquality().hash([e?.name, e?.count, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is ClimbsRecord;
}
