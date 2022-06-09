import 'package:json_annotation/json_annotation.dart';
import 'package:salesiq_mobilisten/src/utils.dart';

part 'dto.g.dart';

@JsonSerializable()
@DateTimeJsonConverter()
class SIQVisitorInformation with StringifyJson {
  final String name;
  final String email;
  final String phone;
  final int numberOfChats;
  final String city;
  final String ip;
  final DateTime firstVisitTime;
  final DateTime lastVisitTime;
  final String region;
  final String os;
  final String countryCode;
  final String browser;
  final String totalTimeSpent;
  final int numberOfVisits;
  final int noOfDaysVisited;
  final String state;
  final String searchEngine;
  final String searchQuery;

  const SIQVisitorInformation({
    required this.name,
    required this.email,
    required this.phone,
    required this.numberOfChats,
    required this.city,
    required this.ip,
    required this.firstVisitTime,
    required this.lastVisitTime,
    required this.region,
    required this.os,
    required this.countryCode,
    required this.browser,
    required this.totalTimeSpent,
    required this.numberOfVisits,
    required this.noOfDaysVisited,
    required this.state,
    required this.searchEngine,
    required this.searchQuery,
  });

  factory SIQVisitorInformation.fromJson(Map<dynamic, dynamic> map) =>
      _$SIQVisitorInformationFromJson(map);
  Map<String, dynamic> toJson() => _$SIQVisitorInformationToJson(this);
}

enum SIQChatStatus {
  open,
  connected,
  closed,
  ended,
  missed,
  waiting,
  triggered,
  proactive
}

@JsonSerializable()
@DateTimeJsonConverter()
class SIQChat with StringifyJson {
  final String? id;
  final String? question;
  final int? queuePosition;

  final String? attenderName;
  final String? attenderEmail;
  final String? attenderID;
  final bool? isBotAttender; // Null on ios

  final String? departmentName;
  final SIQChatStatus status;
  final int unreadCount;

  final String? lastMessage;
  final DateTime? lastMessageTime;
  final String? lastMessageSender;

  final String? feedback;
  final String? rating;

  const SIQChat({
    required this.id,
    this.question,
    this.queuePosition,
    this.attenderName,
    this.attenderEmail,
    this.attenderID,
    required this.isBotAttender,
    this.departmentName,
    required this.status,
    required this.unreadCount,
    this.lastMessage,
    this.lastMessageTime,
    this.lastMessageSender,
    this.feedback,
    this.rating,
  });

  factory SIQChat.fromJson(Map<dynamic, dynamic> map) => _$SIQChatFromJson(map);
  Map<String, dynamic> toJson() => _$SIQChatToJson(this);
}

@JsonSerializable()
class ChatAction with StringifyJson {
  final String actionUUID;
  final String elementID;
  final String label;
  final String name;
  final String clientActionName;

  const ChatAction({
    required this.actionUUID,
    required this.elementID,
    required this.label,
    required this.name,
    required this.clientActionName,
  });

  factory ChatAction.fromJson(Map<dynamic, dynamic> map) =>
      _$ChatActionFromJson(map);
  Map<String, dynamic> toJson() => _$ChatActionToJson(this);
}
