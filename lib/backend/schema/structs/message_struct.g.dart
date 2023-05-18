// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageStruct> _$messageStructSerializer =
    new _$MessageStructSerializer();

class _$MessageStructSerializer implements StructuredSerializer<MessageStruct> {
  @override
  final Iterable<Type> types = const [MessageStruct, _$MessageStruct];
  @override
  final String wireName = 'MessageStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MessageStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MessageStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$MessageStruct extends MessageStruct {
  @override
  final String? role;
  @override
  final String? content;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MessageStruct([void Function(MessageStructBuilder)? updates]) =>
      (new MessageStructBuilder()..update(updates))._build();

  _$MessageStruct._(
      {this.role, this.content, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MessageStruct', 'firestoreUtilData');
  }

  @override
  MessageStruct rebuild(void Function(MessageStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageStructBuilder toBuilder() => new MessageStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageStruct &&
        role == other.role &&
        content == other.content &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessageStruct')
          ..add('role', role)
          ..add('content', content)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MessageStructBuilder
    implements Builder<MessageStruct, MessageStructBuilder> {
  _$MessageStruct? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MessageStructBuilder() {
    MessageStruct._initializeBuilder(this);
  }

  MessageStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _content = $v.content;
      _name = $v.name;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageStruct;
  }

  @override
  void update(void Function(MessageStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessageStruct build() => _build();

  _$MessageStruct _build() {
    final _$result = _$v ??
        new _$MessageStruct._(
            role: role,
            content: content,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MessageStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
