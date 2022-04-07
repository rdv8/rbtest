import 'package:rbtest/resources/enum.dart';
import 'package:rbtest/ui/notification_screen/notification_screen.dart';

const List<NotificationItemModel> notificationList = [
  NotificationItemModel(
    title: 'У места новое блюдо',
    date: '22:32',
    type: NotificationType.info,
    place: 'Mac',
    orderNumber: '',
    newStatus: '',
    oldStatus: '',
  ),
   NotificationItemModel(
    title: 'Изменился статус заказа',
    date: '66:77',
    type: NotificationType.status,
    place: '',
    orderNumber: '№7845',
    newStatus: 'Стал',
    oldStatus: 'Был',
  ),
   NotificationItemModel(
    title: 'Новое сообщение в заказе',
    date: '00:00',
    type: NotificationType.message,
    place: '',
    orderNumber: '№21212',
    newStatus: '',
    oldStatus: '',
  ),
   NotificationItemModel(
    title: 'У места новое блюдо',
    date: '22:32',
    type: NotificationType.info,
    place: 'Mac',
    orderNumber: '',
    newStatus: '',
    oldStatus: '',
  ),
   NotificationItemModel(
    title: 'Изменился статус заказа',
    date: '66:77',
    type: NotificationType.status,
    place: '',
    orderNumber: '№7845',
    newStatus: 'Стал',
    oldStatus: 'Был',
  ),
   NotificationItemModel(
    title: 'Новое сообщение в заказе',
    date: '00:00',
    type: NotificationType.message,
    place: '',
    orderNumber: '№21212',
    newStatus: '',
    oldStatus: '',
  ),
];
