import 'package:flutter/material.dart';
import 'package:rbtest/resources/colors.dart';
import 'package:rbtest/resources/icons.dart';

class NotificationInfoItem extends StatelessWidget {
  final String date;
  final String title;
  final String place;

  const NotificationInfoItem({
    required this.title,
    required this.date,
    required this.place,
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
          CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.iconBg,
            child: Image.asset(AppIcon.heart),
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
                Text(
                  title,
                  style: const TextStyle(color: AppColors.grey, fontSize: 14),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.bg,
                  child: Text(place),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Перейти в карточку места'),
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
