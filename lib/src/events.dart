import 'package:json_annotation/json_annotation.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart' show SIQEvent;
import 'package:salesiq_mobilisten/src/dto.dart';
import 'package:salesiq_mobilisten/src/utils.dart';

part 'events.g.dart';

abstract class SIQEventBase with StringifyJson {
  const SIQEventBase();

  factory SIQEventBase.fromJson(Map<dynamic, dynamic> map) {
    final eventName = map['eventName'] as String;

    switch (eventName) {
      case SIQEvent.supportOpened:
      case SIQEvent.supportClosed:
        return SIQSupportEvent.fromJson(map);
      case SIQEvent.operatorsOnline:
      case SIQEvent.operatorsOffline:
        return SIQOperatorsEvent.fromJson(map);
      case SIQEvent.visitorIPBlocked:
        return SIQVisitorEvent.fromJson(map);
      case SIQEvent.customTrigger:
        return SIQTriggerEvent.fromJson(map);
      case SIQEvent.chatViewOpened:
      case SIQEvent.chatViewClosed:
        return SIQViewChatEvent.fromJson(map);
      case SIQEvent.chatOpened:
      case SIQEvent.chatClosed:
      case SIQEvent.chatAttended:
      case SIQEvent.chatMissed:
      case SIQEvent.chatFeedbackReceived:
      case SIQEvent.chatRatingReceived:
      case SIQEvent.chatQueuePositionChange:
      case SIQEvent.chatReopened:
        return SIQChatEvent.fromJson(map);
      case SIQEvent.performChatAction:
        return SIQActionChatEvent.fromJson(map);
      case SIQEvent.articleLiked:
      case SIQEvent.articleDisliked:
      case SIQEvent.articleOpened:
      case SIQEvent.articleClosed:
        return SIQFaqEvent.fromJson(map);
      case SIQEvent.chatUnreadCountChanged:
        return SIQUnreadMessagesEvent.fromJson(map);
    }
    throw 'Error';
  }
  Map<String, dynamic> toJson();
}

enum SIQVisitorEventName {
  visitorIPBlocked,
}

@JsonSerializable()
class SIQVisitorEvent extends SIQEventBase {
  @JsonKey(name: 'eventName')
  final SIQVisitorEventName name;

  const SIQVisitorEvent({
    required this.name,
  });

  factory SIQVisitorEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQVisitorEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQVisitorEventToJson(this);
}

enum SIQSupportEventName {
  supportOpened,
  supportClosed,
}

@JsonSerializable()
class SIQSupportEvent implements SIQEventBase {
  @JsonKey(name: 'eventName')
  final SIQSupportEventName name;

  const SIQSupportEvent({
    required this.name,
  });

  factory SIQSupportEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQSupportEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQSupportEventToJson(this);
}

enum SIQOperatorsEventName {
  operatorsOnline,
  operatorsOffline,
}

@JsonSerializable()
class SIQOperatorsEvent implements SIQEventBase {
  @JsonKey(name: 'eventName')
  final SIQOperatorsEventName name;

  const SIQOperatorsEvent({
    required this.name,
  });

  factory SIQOperatorsEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQOperatorsEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQOperatorsEventToJson(this);
}

@JsonSerializable()
class SIQTriggerEvent implements SIQEventBase {
  final String triggerName;
  final SIQVisitorInformation visitorInformation;

  const SIQTriggerEvent({
    required this.triggerName,
    required this.visitorInformation,
  });

  factory SIQTriggerEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQTriggerEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQTriggerEventToJson(this);
}

enum SIQViewChatEventName {
  chatViewOpened,
  chatViewClosed,
}

@JsonSerializable()
class SIQViewChatEvent implements SIQEventBase {
  @JsonKey(name: 'eventName')
  final SIQViewChatEventName name;
  final String? chatID;

  const SIQViewChatEvent({
    required this.name,
    this.chatID,
  });

  factory SIQViewChatEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQViewChatEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQViewChatEventToJson(this);
}

enum SIQChatEventName {
  chatOpened,
  chatClosed,
  chatAttended,
  chatMissed,
  chatReopened,
  ratingReceived,
  feedbackReceived,
  chatQueuePositionChange,
}

@JsonSerializable()
class SIQChatEvent implements SIQEventBase {
  @JsonKey(name: 'eventName')
  final SIQChatEventName name;
  final SIQChat chat;

  const SIQChatEvent({
    required this.name,
    required this.chat,
  });

  factory SIQChatEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQChatEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQChatEventToJson(this);
}

@JsonSerializable()
class SIQActionChatEvent implements SIQEventBase {
  final ChatAction chatAction;

  const SIQActionChatEvent({
    required this.chatAction,
  });

  factory SIQActionChatEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQActionChatEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQActionChatEventToJson(this);
}

@JsonSerializable()
class SIQUnreadMessagesEvent implements SIQEventBase {
  final int unreadCount;

  const SIQUnreadMessagesEvent({
    required this.unreadCount,
  });

  factory SIQUnreadMessagesEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQUnreadMessagesEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQUnreadMessagesEventToJson(this);
}

enum SIQFaqEventName {
  articleOpened,
  articleClosed,
  articleLiked,
  articleDisliked
}

@JsonSerializable()
class SIQFaqEvent implements SIQEventBase {
  @JsonKey(name: 'eventName')
  final SIQFaqEventName name;
  final String articleID;

  const SIQFaqEvent({
    required this.name,
    required this.articleID,
  });

  factory SIQFaqEvent.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQFaqEventFromJson(map);
  Map<String, dynamic> toJson() => _$SIQFaqEventToJson(this);
}
