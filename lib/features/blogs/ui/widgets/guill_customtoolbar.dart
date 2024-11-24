import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
class QuillCustomToolbar extends StatelessWidget {
  const QuillCustomToolbar({required this.controller, super.key});

  final QuillController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: [
          QuillToolbarImageButton(
            controller: controller,
          ),
          QuillToolbarVideoButton(
            controller: controller,
          ),
          const VerticalDivider(),
          QuillToolbarSelectHeaderStyleDropdownButton(
            controller: controller,
            options: QuillToolbarSelectHeaderStyleDropdownButtonOptions(
              afterButtonPressed: (){

              },
            ),
          ),
          const VerticalDivider(),
        ],
      ),
    );
  }
}