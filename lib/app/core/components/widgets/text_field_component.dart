import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';

class TextFieldComponent extends StatefulWidget {
  const TextFieldComponent(
      {super.key,
      required this.textController,
      required this.focusNode,
      this.nextFocusNode,
      required this.hintText,
      required this.keyboardType,
      this.textInputAction = TextInputAction.none,
      this.isPassword = false,
      this.validator,
      this.validationMode = AutovalidateMode.disabled});

  final TextEditingController textController;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool isPassword;
  final String? Function(String?)? validator;
  final AutovalidateMode validationMode;

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  bool obscureText = true;

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: widget.textController,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? obscureText : false,
      textInputAction: widget.textInputAction,
      autovalidateMode: widget.validationMode,
      validator: widget.validator,
      cursorColor: AppColors.secondary,
      cursorHeight: 20.h,
      style: textTheme.bodySmall,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? CupertinoButton(
                padding: EdgeInsets.zero,
                minSize: 0.0001,
                child: obscureText
                    ? const Icon(Icons.visibility_off,
                        color: AppColors.slateGray)
                    : const Icon(Icons.visibility, color: AppColors.slateGray),
                onPressed: () {
                  toggleObscureText();
                },
              )
            : null,
        hintText: widget.hintText,
      ),
      onFieldSubmitted: (_) {
        widget.nextFocusNode != null
            ? FocusScope.of(context).requestFocus(widget.nextFocusNode)
            : FocusScope.of(context).unfocus();
      },
    );
  }
}
