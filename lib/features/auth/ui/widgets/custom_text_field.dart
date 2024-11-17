import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/misc.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.prefix,
    required this.controller,
    required this.hint,
    super.key,
    this.width,
    this.highlightUserInput = false,
    this.isPassword = false,
    this.coloredBorders = false,
    this.height,
    this.maxLines,
    this.minLines,
    this.keyboardType,
    this.initialText,
    this.suffix,
  });

  final double? width;
  final double? height;
  final int? maxLines;
  final int? minLines;
  final bool highlightUserInput;
  final bool isPassword;
  final String? initialText;
  final TextInputType? keyboardType;
  final Widget prefix;
  final Widget? suffix;
  final bool coloredBorders;
  final String hint;
  final TextEditingController controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final (_, colorScheme) = Misc.getTheme(context);
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: widget.controller,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        textCapitalization: TextCapitalization.sentences,
        obscureText: widget.isPassword,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          labelStyle: const TextTheme().labelMedium?.copyWith(
                fontFamily: 'Poppins',
                letterSpacing: 0,
              ),
          alignLabelWithHint: true,
          hintText: widget.hint,
          hintStyle:const TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffix,
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(
              color: widget.coloredBorders
                  ? colorScheme.primary
                  : const Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(
              color:  widget.coloredBorders
                  ? colorScheme.primary
                  : const Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.error,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.error,
              width: 0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 12),
          border: InputBorder.none,
        ),
        style: TextStyle(
          backgroundColor: widget.highlightUserInput ? Colors.yellow : null,
          fontFamily: 'Outfit',
          letterSpacing: 0,
        ),
        cursorColor: colorScheme.primary,
      ),
    );
  }
}
