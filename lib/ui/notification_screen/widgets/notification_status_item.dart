import 'package:flutter/material.dart';
import 'package:rbtest/resources/colors.dart';

class NotificationStatusItem extends StatelessWidget {
  final String date;

  final String oldStatus;
  final String newStatus;
  final String orderNumber;

  const NotificationStatusItem({
    required this.date,
    required this.oldStatus,
    required this.newStatus,
    required this.orderNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.bgWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.iconBg,
            child: Icon(
              Icons.access_time,
              color: AppColors.bgWhite,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style:
                      const TextStyle(color: AppColors.greyBlue, fontSize: 14),
                ),
                Row(
                  children: [
                    const Text(
                      'Изменился статус заказа',
                      style: TextStyle(color: AppColors.grey, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          orderNumber,
                          style: const TextStyle(color: AppColors.iconBg),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.bg,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(oldStatus),
                      const Icon(
                        Icons.arrow_right_alt,
                      ),
                      Text(newStatus),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Перейти в заказ'),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.iconBg)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
