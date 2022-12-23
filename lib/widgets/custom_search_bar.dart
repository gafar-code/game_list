import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gafar_game_list/utils/const.dart';
import 'package:gafar_game_list/utils/theme.dart';

class CustomSearchBar extends StatelessWidget {
  final Function(String) onSubmit;
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.onSubmit, required this.controller});

  final TextStyle _textStyle = const TextStyle(color: Colors.white, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmit,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.white,
        style: _textStyle,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.secondryColor,
          hintText: 'Search here..',
          hintStyle: _textStyle,
          contentPadding: const EdgeInsets.all(16),
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
            child: SvgPicture.asset(
              searchIcon,
              color: Colors.white,
              height: 16,
              width: 16,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0),
          ),
        ),
      ),
    );
  }
}
