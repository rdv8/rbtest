import 'package:flutter/material.dart';
import 'package:rbtest/resources/colors.dart';
import 'package:rbtest/resources/icons.dart';

class AppTabbar extends StatefulWidget {
  final Function(int index) onTap;
  const AppTabbar({required this.onTap, Key? key}) : super(key: key);

  @override
  State<AppTabbar> createState() => _AppTabbarState();
}

class _AppTabbarState extends State<AppTabbar> {
  var _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _AppAppbarItem(
            currentIndex: _currentIndex,
            onTap: (index) {
              _currentIndex = index;
              widget.onTap(index);
            },
            icon: Image.asset(
              AppIcon.menu,
              height: 24,
            ),
            index: 0),
        _AppAppbarItem(
            currentIndex: _currentIndex,
            onTap: (index) {
              _currentIndex = index;
              widget.onTap(index);
            },
            icon: const Icon(
              Icons.location_on_outlined,
              size: 24,
            ),
            index: 1),
        _AppAppbarItem(
            currentIndex: _currentIndex,
            onTap: (index) {
              _currentIndex = index;
              widget.onTap(index);
            },
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 24,
            ),
            index: 2),
      ],
    );
  }
}

class _AppAppbarItem extends StatelessWidget {
  final Widget icon;
  final Function(int index) onTap;
  final int index;
  final int currentIndex;
  const _AppAppbarItem({
    required this.onTap,
    required this.icon,
    required this.index,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor:
          index == currentIndex ? AppColors.iconBg : Colors.transparent,
      foregroundColor: index == currentIndex ? Colors.white : Colors.black,
      child: IconButton(
          onPressed: () {
            onTap(index);
          },
          icon: icon),
    );
  }
}
