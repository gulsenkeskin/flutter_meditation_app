import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/core/validator/empty_validator.dart';

class TextInputForm extends StatefulWidget {
  final Function? onChanged;
  final String? hintText;
  final Function? validator;
  final Function? onSaved;

  const TextInputForm({
    Key? key,
    this.hintText,
    this.onChanged,
    this.onSaved,
    this.validator,
  }) : super(key: key);
  @override
  State<TextInputForm> createState() => _TextInputFormState();
}

class _TextInputFormState extends State<TextInputForm> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.text = "";

    textController.addListener(() {
      widget.onChanged?.call(textController.text);
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(helperText: "", hintText: widget.hintText),
      onSaved: (value) => widget.onSaved?.call(value),
      validator: (value) => widget.validator?.call(value),
    );
  }
}
