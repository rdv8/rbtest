part of '../ui/notification_screen/notification_screen.dart';

class NotificationItemModel {
  final String date;
  final NotificationType type;
  final String title;
  final String place;
  final String oldStatus;
  final String newStatus;
  final String orderNumber;

  const NotificationItemModel({
    required this.title,
    required this.date,
    required this.type,
    required this.place,
    required this.oldStatus,
    required this.newStatus,
    required this.orderNumber,
    Key? key,
  });
}
