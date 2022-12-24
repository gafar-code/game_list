import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/utils/const.dart';
import 'package:game/utils/theme.dart';
import 'package:game/utils/validation.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String) onSubmit;
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.onSubmit, required this.controller});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> with ValidationMixin {
  late TextStyle _textStyle;
  late GlobalKey<FormState> _key;

  @override
  void initState() {
    _textStyle = const TextStyle(color: Colors.white, fontSize: 16);
    _key = GlobalKey<FormState>();
    super.initState();
  }

  void _onSubmit(String value) {
    if (_key.currentState!.validate()) {
      widget.onSubmit(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
      child: Form(
        key: _key,
        child: TextFormField(
          controller: widget.controller,
          onFieldSubmitted: _onSubmit,
          validator: isMoreThenMaxLength,
          textInputAction: TextInputAction.done,
          cursorColor: Colors.white,
          style: _textStyle,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppTheme.secondryColor,
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
      ),
    );
  }
}
