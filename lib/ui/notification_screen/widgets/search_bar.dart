part of '../notification_screen.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _controller;
  const SearchBar({required controller, Key? key})
      : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(1, 2),
        )
      ]),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintStyle: const TextStyle(color: AppColors.greyFour),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
            hintText: 'Поиск по номеру заказа',
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
