import 'package:flutter/material.dart';

class ValidationInputForm extends StatelessWidget {
  const ValidationInputForm({
    Key? key,
    required this.controller,
    required this.errorMsg,
    required this.labelText,
    this.inputType,
    this.hintText,
    this.onChange,
    this.textInputAction = TextInputAction.next
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final String labelText;
  final String errorMsg;
  final Function? onChange;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,
          // style: fontSize16,
        ),
        TextFormField(
          controller: controller,
          keyboardType: inputType,
          style: const TextStyle(color: Colors.black),
          textInputAction: textInputAction,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Colors.black12,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Colors.black38,
                width: 2.0,
              ),
            ),
          ),
          onChanged: (value) {
            // if (onChange != null) {
            //   onChange!(value);
            // }
          },
        ),
        if (errorMsg.isNotEmpty)
          Text(
            errorMsg,
            style: const TextStyle(color: Colors.pink),
          ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}