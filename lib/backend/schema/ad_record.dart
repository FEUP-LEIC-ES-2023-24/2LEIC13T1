import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdRecord extends FirestoreRecord {
  AdRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "aid" field.
  String? _aid;
  String get aid => _aid ?? '';
  bool hasAid() => _aid != null;

  // "reported" field.
  bool? _reported;
  bool get reported => _reported ?? false;
  bool hasReported() => _reported != null;

  // "report_reason" field.
  String? _reportReason;
  String get reportReason => _reportReason ?? '';
  bool hasReportReason() => _reportReason != null;

  // "reported_reason" field.
  List<String>? _reportedReason;
  List<String> get reportedReason => _reportedReason ?? const [];
  bool hasReportedReason() => _reportedReason != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _location = snapshotData['location'] as String?;
    _image1 = snapshotData['image1'] as String?;
    _sellerId = snapshotData['seller_id'] as String?;
    _aid = snapshotData['aid'] as String?;
    _reported = snapshotData['reported'] as bool?;
    _reportReason = snapshotData['report_reason'] as String?;
    _reportedReason = getDataList(snapshotData['reported_reason']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ad');

  static Stream<AdRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdRecord.fromSnapshot(s));

  static Future<AdRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdRecord.fromSnapshot(s));

  static AdRecord fromSnapshot(DocumentSnapshot snapshot) => AdRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdRecordData({
  String? name,
  String? category,
  String? description,
  double? price,
  String? location,
  String? image1,
  String? sellerId,
  String? aid,
  bool? reported,
  String? reportReason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'description': description,
      'price': price,
      'location': location,
      'image1': image1,
      'seller_id': sellerId,
      'aid': aid,
      'reported': reported,
      'report_reason': reportReason,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdRecordDocumentEquality implements Equality<AdRecord> {
  const AdRecordDocumentEquality();

  @override
  bool equals(AdRecord? e1, AdRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.location == e2?.location &&
        e1?.image1 == e2?.image1 &&
        e1?.sellerId == e2?.sellerId &&
        e1?.aid == e2?.aid &&
        e1?.reported == e2?.reported &&
        e1?.reportReason == e2?.reportReason &&
        listEquality.equals(e1?.reportedReason, e2?.reportedReason);
  }

  @override
  int hash(AdRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.description,
        e?.price,
        e?.location,
        e?.image1,
        e?.sellerId,
        e?.aid,
        e?.reported,
        e?.reportReason,
        e?.reportedReason
      ]);

  @override
  bool isValidKey(Object? o) => o is AdRecord;
}
