// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatStruct> _$chatStructSerializer = new _$ChatStructSerializer();

class _$ChatStructSerializer implements StructuredSerializer<ChatStruct> {
  @override
  final Iterable<Type> types = const [ChatStruct, _$ChatStruct];
  @override
  final String wireName = 'ChatStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'messages',
      serializers.serialize(object.messages,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MessageStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChatStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MessageStruct)]))!
              as BuiltList<Object?>);
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

class _$ChatStruct extends ChatStruct {
  @override
  final String? model;
  @override
  final BuiltList<MessageStruct> messages;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ChatStruct([void Function(ChatStructBuilder)? updates]) =>
      (new ChatStructBuilder()..update(updates))._build();

  _$ChatStruct._(
      {this.model, required this.messages, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(messages, r'ChatStruct', 'messages');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ChatStruct', 'firestoreUtilData');
  }

  @override
  ChatStruct rebuild(void Function(ChatStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatStructBuilder toBuilder() => new ChatStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatStruct &&
        model == other.model &&
        messages == other.messages &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatStruct')
          ..add('model', model)
          ..add('messages', messages)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ChatStructBuilder implements Builder<ChatStruct, ChatStructBuilder> {
  _$ChatStruct? _$v;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  ListBuilder<MessageStruct>? _messages;
  ListBuilder<MessageStruct> get messages =>
      _$this._messages ??= new ListBuilder<MessageStruct>();
  set messages(ListBuilder<MessageStruct>? messages) =>
      _$this._messages = messages;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ChatStructBuilder() {
    ChatStruct._initializeBuilder(this);
  }

  ChatStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _model = $v.model;
      _messages = $v.messages.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatStruct;
  }

  @override
  void update(void Function(ChatStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatStruct build() => _build();

  _$ChatStruct _build() {
    _$ChatStruct _$result;
    try {
      _$result = _$v ??
          new _$ChatStruct._(
              model: model,
              messages: messages.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'ChatStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        messages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
