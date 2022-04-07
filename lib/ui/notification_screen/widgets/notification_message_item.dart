import 'package:flutter/material.dart';
import 'package:rbtest/resources/colors.dart';

class NotificationMessageItem extends StatelessWidget {
  final String date;
  final String orderNumber;

  const NotificationMessageItem({
    required this.date,
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
              Icons.message_outlined,
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
                      'Новое сообщение в заказе',
                      style: TextStyle(color: AppColors.grey, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          orderNumber,
                          style: const TextStyle(
                              color: AppColors.iconBg,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
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
