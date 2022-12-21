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
          style: TextStyle(color: Colors.grey),
          onTap: () {},
          keyboardType: widget.keyboardType,
          obscureText: false,
          decoration: InputDecoration(
            // contentPadding: const EdgeInsets.symmetric(
            //   horizontal: 0,
            //   vertical: 20,
            // ),

            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            hintText: widget.placeholder,
            hintStyle: TextStyle(color: Color.fromARGB(255, 67, 67, 67)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12.0)),
            filled: false,

            // enabledBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Theme.of(context).disabledColor),
            // ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            // border: const UnderlineInputBorder(

            //   borderSide: BorderSide(color: Colors.green),
            // ),
          ),
        ),
      ],
    );
  }
}
