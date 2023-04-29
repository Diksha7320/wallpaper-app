// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageRecord> _$imageRecordSerializer = new _$ImageRecordSerializer();

class _$ImageRecordSerializer implements StructuredSerializer<ImageRecord> {
  @override
  final Iterable<Type> types = const [ImageRecord, _$ImageRecord];
  @override
  final String wireName = 'ImageRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imageName;
    if (value != null) {
      result
        ..add('ImageName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageCategory;
    if (value != null) {
      result
        ..add('ImageCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ImageRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ImageName':
          result.imageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImageCategory':
          result.imageCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageRecord extends ImageRecord {
  @override
  final String? imageName;
  @override
  final String? imageCategory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImageRecord([void Function(ImageRecordBuilder)? updates]) =>
      (new ImageRecordBuilder()..update(updates))._build();

  _$ImageRecord._({this.imageName, this.imageCategory, this.ffRef}) : super._();

  @override
  ImageRecord rebuild(void Function(ImageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageRecordBuilder toBuilder() => new ImageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageRecord &&
        imageName == other.imageName &&
        imageCategory == other.imageCategory &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageName.hashCode);
    _$hash = $jc(_$hash, imageCategory.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageRecord')
          ..add('imageName', imageName)
          ..add('imageCategory', imageCategory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImageRecordBuilder implements Builder<ImageRecord, ImageRecordBuilder> {
  _$ImageRecord? _$v;

  String? _imageName;
  String? get imageName => _$this._imageName;
  set imageName(String? imageName) => _$this._imageName = imageName;

  String? _imageCategory;
  String? get imageCategory => _$this._imageCategory;
  set imageCategory(String? imageCategory) =>
      _$this._imageCategory = imageCategory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImageRecordBuilder() {
    ImageRecord._initializeBuilder(this);
  }

  ImageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageName = $v.imageName;
      _imageCategory = $v.imageCategory;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageRecord;
  }

  @override
  void update(void Function(ImageRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageRecord build() => _build();

  _$ImageRecord _build() {
    final _$result = _$v ??
        new _$ImageRecord._(
            imageName: imageName, imageCategory: imageCategory, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
