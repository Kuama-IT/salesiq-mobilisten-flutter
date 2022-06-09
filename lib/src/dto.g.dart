// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SIQVisitorInformation _$SIQVisitorInformationFromJson(Map json) =>
    SIQVisitorInformation(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      numberOfChats: json['numberOfChats'] as int,
      city: json['city'] as String,
      ip: json['ip'] as String,
      firstVisitTime: DateTime.parse(json['firstVisitTime'] as String),
      lastVisitTime: DateTime.parse(json['lastVisitTime'] as String),
      region: json['region'] as String,
      os: json['os'] as String,
      countryCode: json['countryCode'] as String,
      browser: json['browser'] as String,
      totalTimeSpent: json['totalTimeSpent'] as String,
      numberOfVisits: json['numberOfVisits'] as int,
      noOfDaysVisited: json['noOfDaysVisited'] as int,
      state: json['state'] as String,
      searchEngine: json['searchEngine'] as String,
      searchQuery: json['searchQuery'] as String,
    );

Map<String, dynamic> _$SIQVisitorInformationToJson(
        SIQVisitorInformation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'numberOfChats': instance.numberOfChats,
      'city': instance.city,
      'ip': instance.ip,
      'firstVisitTime': instance.firstVisitTime.toIso8601String(),
      'lastVisitTime': instance.lastVisitTime.toIso8601String(),
      'region': instance.region,
      'os': instance.os,
      'countryCode': instance.countryCode,
      'browser': instance.browser,
      'totalTimeSpent': instance.totalTimeSpent,
      'numberOfVisits': instance.numberOfVisits,
      'noOfDaysVisited': instance.noOfDaysVisited,
      'state': instance.state,
      'searchEngine': instance.searchEngine,
      'searchQuery': instance.searchQuery,
    };

SIQChat _$SIQChatFromJson(Map json) => SIQChat(
      id: json['id'] as String?,
      question: json['question'] as String?,
      queuePosition: json['queuePosition'] as int?,
      attenderName: json['attenderName'] as String?,
      attenderEmail: json['attenderEmail'] as String?,
      attenderID: json['attenderID'] as String?,
      isBotAttender: json['isBotAttender'] as bool?,
      departmentName: json['departmentName'] as String?,
      status: $enumDecode(_$SIQChatStatusEnumMap, json['status']),
      unreadCount: json['unreadCount'] as int,
      lastMessage: json['lastMessage'] as String?,
      lastMessageTime: const DateTimeJsonConverter()
          .fromJson(json['lastMessageTime'] as double?),
      lastMessageSender: json['lastMessageSender'] as String?,
      feedback: json['feedback'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$SIQChatToJson(SIQChat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('question', instance.question);
  writeNotNull('queuePosition', instance.queuePosition);
  writeNotNull('attenderName', instance.attenderName);
  writeNotNull('attenderEmail', instance.attenderEmail);
  writeNotNull('attenderID', instance.attenderID);
  writeNotNull('isBotAttender', instance.isBotAttender);
  writeNotNull('departmentName', instance.departmentName);
  val['status'] = _$SIQChatStatusEnumMap[instance.status];
  val['unreadCount'] = instance.unreadCount;
  writeNotNull('lastMessage', instance.lastMessage);
  writeNotNull('lastMessageTime',
      const DateTimeJsonConverter().toJson(instance.lastMessageTime));
  writeNotNull('lastMessageSender', instance.lastMessageSender);
  writeNotNull('feedback', instance.feedback);
  writeNotNull('rating', instance.rating);
  return val;
}

const _$SIQChatStatusEnumMap = {
  SIQChatStatus.open: 'open',
  SIQChatStatus.connected: 'connected',
  SIQChatStatus.closed: 'closed',
  SIQChatStatus.ended: 'ended',
  SIQChatStatus.missed: 'missed',
  SIQChatStatus.waiting: 'waiting',
  SIQChatStatus.triggered: 'triggered',
  SIQChatStatus.proactive: 'proactive',
};

ChatAction _$ChatActionFromJson(Map json) => ChatAction(
      actionUUID: json['actionUUID'] as String,
      elementID: json['elementID'] as String,
      label: json['label'] as String,
      name: json['name'] as String,
      clientActionName: json['clientActionName'] as String,
    );

Map<String, dynamic> _$ChatActionToJson(ChatAction instance) =>
    <String, dynamic>{
      'actionUUID': instance.actionUUID,
      'elementID': instance.elementID,
      'label': instance.label,
      'name': instance.name,
      'clientActionName': instance.clientActionName,
    };
