import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'image_record.g.dart';

abstract class ImageRecord implements Built<ImageRecord, ImageRecordBuilder> {
  static Serializer<ImageRecord> get serializer => _$imageRecordSerializer;

  @BuiltValueField(wireName: 'ImageName')
  String? get imageName;

  @BuiltValueField(wireName: 'ImageCategory')
  String? get imageCategory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImageRecordBuilder builder) => builder
    ..imageName = ''
    ..imageCategory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('image');

  static Stream<ImageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImageRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImageRecord._();
  factory ImageRecord([void Function(ImageRecordBuilder) updates]) =
      _$ImageRecord;

  static ImageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImageRecordData({
  String? imageName,
  String? imageCategory,
}) {
  final firestoreData = serializers.toFirestore(
    ImageRecord.serializer,
    ImageRecord(
      (i) => i
        ..imageName = imageName
        ..imageCategory = imageCategory,
    ),
  );

  return firestoreData;
}
