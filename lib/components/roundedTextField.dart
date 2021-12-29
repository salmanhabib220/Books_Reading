import 'package:books_reading/components/textfield_container.dart';
import 'package:books_reading/constants.dart';
import 'package:flutter/material.dart';

class RoundedTextInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final String label;
  final ValueChanged<String> onChanged;
  RoundedTextInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    required this.label,
  }) : super(key: key);

  @override
  State<RoundedTextInputField> createState() => _RoundedTextInputFieldState();
}

class _RoundedTextInputFieldState extends State<RoundedTextInputField> {
  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: Form(
        child: TextFormField(
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            icon: Icon(
              widget.icon,
              color: kPrimaryColor,
            ),
            label: Text(widget.label),
            hintText: widget.hintText,
            border: InputBorder.none,
            focusColor: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
