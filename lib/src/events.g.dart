// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SIQVisitorEvent _$SIQVisitorEventFromJson(Map json) => SIQVisitorEvent(
      name: $enumDecode(_$SIQVisitorEventNameEnumMap, json['eventName']),
    );

Map<String, dynamic> _$SIQVisitorEventToJson(SIQVisitorEvent instance) =>
    <String, dynamic>{
      'eventName': _$SIQVisitorEventNameEnumMap[instance.name],
    };

const _$SIQVisitorEventNameEnumMap = {
  SIQVisitorEventName.visitorIPBlocked: 'visitorIPBlocked',
};

SIQSupportEvent _$SIQSupportEventFromJson(Map json) => SIQSupportEvent(
      name: $enumDecode(_$SIQSupportEventNameEnumMap, json['eventName']),
    );

Map<String, dynamic> _$SIQSupportEventToJson(SIQSupportEvent instance) =>
    <String, dynamic>{
      'eventName': _$SIQSupportEventNameEnumMap[instance.name],
    };

const _$SIQSupportEventNameEnumMap = {
  SIQSupportEventName.supportOpened: 'supportOpened',
  SIQSupportEventName.supportClosed: 'supportClosed',
};

SIQOperatorsEvent _$SIQOperatorsEventFromJson(Map json) => SIQOperatorsEvent(
      name: $enumDecode(_$SIQOperatorsEventNameEnumMap, json['eventName']),
    );

Map<String, dynamic> _$SIQOperatorsEventToJson(SIQOperatorsEvent instance) =>
    <String, dynamic>{
      'eventName': _$SIQOperatorsEventNameEnumMap[instance.name],
    };

const _$SIQOperatorsEventNameEnumMap = {
  SIQOperatorsEventName.operatorsOnline: 'operatorsOnline',
  SIQOperatorsEventName.operatorsOffline: 'operatorsOffline',
};

SIQTriggerEvent _$SIQTriggerEventFromJson(Map json) => SIQTriggerEvent(
      triggerName: json['triggerName'] as String,
      visitorInformation:
          SIQVisitorInformation.fromJson(json['visitorInformation'] as Map),
    );

Map<String, dynamic> _$SIQTriggerEventToJson(SIQTriggerEvent instance) =>
    <String, dynamic>{
      'triggerName': instance.triggerName,
      'visitorInformation': instance.visitorInformation,
    };

SIQViewChatEvent _$SIQViewChatEventFromJson(Map json) => SIQViewChatEvent(
      name: $enumDecode(_$SIQViewChatEventNameEnumMap, json['eventName']),
      chatID: json['chatID'] as String?,
    );

Map<String, dynamic> _$SIQViewChatEventToJson(SIQViewChatEvent instance) {
  final val = <String, dynamic>{
    'eventName': _$SIQViewChatEventNameEnumMap[instance.name],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('chatID', instance.chatID);
  return val;
}

const _$SIQViewChatEventNameEnumMap = {
  SIQViewChatEventName.chatViewOpened: 'chatViewOpened',
  SIQViewChatEventName.chatViewClosed: 'chatViewClosed',
};

SIQChatEvent _$SIQChatEventFromJson(Map json) => SIQChatEvent(
      name: $enumDecode(_$SIQChatEventNameEnumMap, json['eventName']),
      chat: SIQChat.fromJson(json['chat'] as Map),
    );

Map<String, dynamic> _$SIQChatEventToJson(SIQChatEvent instance) =>
    <String, dynamic>{
      'eventName': _$SIQChatEventNameEnumMap[instance.name],
      'chat': instance.chat,
    };

const _$SIQChatEventNameEnumMap = {
  SIQChatEventName.chatOpened: 'chatOpened',
  SIQChatEventName.chatClosed: 'chatClosed',
  SIQChatEventName.chatAttended: 'chatAttended',
  SIQChatEventName.chatMissed: 'chatMissed',
  SIQChatEventName.chatReopened: 'chatReopened',
  SIQChatEventName.ratingReceived: 'ratingReceived',
  SIQChatEventName.feedbackReceived: 'feedbackReceived',
  SIQChatEventName.chatQueuePositionChange: 'chatQueuePositionChange',
};

SIQActionChatEvent _$SIQActionChatEventFromJson(Map json) => SIQActionChatEvent(
      chatAction: ChatAction.fromJson(json['chatAction'] as Map),
    );

Map<String, dynamic> _$SIQActionChatEventToJson(SIQActionChatEvent instance) =>
    <String, dynamic>{
      'chatAction': instance.chatAction,
    };

SIQUnreadMessagesEvent _$SIQUnreadMessagesEventFromJson(Map json) =>
    SIQUnreadMessagesEvent(
      unreadCount: json['unreadCount'] as int,
    );

Map<String, dynamic> _$SIQUnreadMessagesEventToJson(
        SIQUnreadMessagesEvent instance) =>
    <String, dynamic>{
      'unreadCount': instance.unreadCount,
    };

SIQFaqEvent _$SIQFaqEventFromJson(Map json) => SIQFaqEvent(
      name: $enumDecode(_$SIQFaqEventNameEnumMap, json['eventName']),
      articleID: json['articleID'] as String,
    );

Map<String, dynamic> _$SIQFaqEventToJson(SIQFaqEvent instance) =>
    <String, dynamic>{
      'eventName': _$SIQFaqEventNameEnumMap[instance.name],
      'articleID': instance.articleID,
    };

const _$SIQFaqEventNameEnumMap = {
  SIQFaqEventName.articleOpened: 'articleOpened',
  SIQFaqEventName.articleClosed: 'articleClosed',
  SIQFaqEventName.articleLiked: 'articleLiked',
  SIQFaqEventName.articleDisliked: 'articleDisliked',
};
