// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ChatMessagesRecord.serializer)
      ..add(ChatStruct.serializer)
      ..add(ChatsRecord.serializer)
      ..add(MessageStruct.serializer)
      ..add(UsersRecord.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                DocumentReference, const [const FullType.nullable(Object)])
          ]),
          () => new ListBuilder<DocumentReference<Object?>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                DocumentReference, const [const FullType.nullable(Object)])
          ]),
          () => new ListBuilder<DocumentReference<Object?>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MessageStruct)]),
          () => new ListBuilder<MessageStruct>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
