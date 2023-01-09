import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String placeholder;
  final String? value;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;
  const TextInput(
      {Key? key,
      required this.placeholder,
      required this.keyboardType,
      required this.controller,
      required this.obscureText,
      required this.label,
      this.value})
      : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        // Text(
        //   widget.label.toUpperCase(),
        //   textAlign: TextAlign.left,
        //   style: DarkTextTheme.titlesmall
        //       .copyWith(color: Theme.of(context).disabledColor),
        // ),
        TextFormField(
          maxLines: 6,
          controller: widget.controller,
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Color(0xFF808080)),
          onTap: () {},
          keyboardType: widget.keyboardType,
          obscureText: false,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            hintText: widget.placeholder,
            hintStyle: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xFF808080)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF0F0F0)),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF0F0F0)),
                borderRadius: BorderRadius.circular(10.0)),
            filled: false,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ],
    );
  }
}
