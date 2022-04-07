import 'package:flutter/material.dart';

import 'package:rbtest/data/notification_list.dart';
import 'package:rbtest/resources/colors.dart';
import 'package:rbtest/resources/enum.dart';
import 'package:rbtest/ui/notification_screen/widgets/notification_info_item.dart';
import 'package:rbtest/ui/notification_screen/widgets/notification_message_item.dart';
import 'package:rbtest/ui/notification_screen/widgets/notification_status_item.dart';

part '../../data/notification_item_model.dart';
part 'widgets/search_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final TextEditingController _controller = TextEditingController();
  List<NotificationItemModel> findedOrderList = notificationList;
  List<NotificationItemModel> newList = [];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.text.isNotEmpty) {
        findedOrderList = notificationList
            .where((element) => element.orderNumber.contains(_controller.text))
            .toList();
      } else {
        findedOrderList = notificationList;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        SearchBar(
          controller: _controller,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView(
          padding: const EdgeInsets.only(top: 10),
          children: [
            ...findedOrderList.map((e) {
              if (e.type == NotificationType.info) {
                return NotificationInfoItem(
                    title: e.title, date: e.date, place: e.place);
              } else if (e.type == NotificationType.message) {
                return NotificationMessageItem(
                    date: e.date, orderNumber: e.orderNumber);
              } else {
                return NotificationStatusItem(
                    date: e.date,
                    oldStatus: e.oldStatus,
                    newStatus: e.newStatus,
                    orderNumber: e.orderNumber);
              }
            }).toList(),
            const SizedBox(
              height: 10,
            ),
            if (findedOrderList.isNotEmpty)
              OutlinedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          const Size.fromWidth(double.infinity)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.symmetric(
                        vertical: 20,
                      )),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.iconBg),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: AppColors.iconBg))),
                  onPressed: () {},
                  child: const Text(
                    'Показать более ранние',
                    style: TextStyle(fontSize: 16),
                  )),
          ],
        )),
      ],
    );
  }
}
