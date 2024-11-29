import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/common/utils/misc.dart';

class QuillCustomToolbar extends StatelessWidget {
  const QuillCustomToolbar({required this.controller, super.key});

  final QuillController controller;

  @override
  Widget build(BuildContext context) {
    final (isLightMode, colorScheme) = Misc.getTheme(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        QuillToolbarLinkStyleButton(controller: controller),
        GestureDetector(
          onTap: () {
            final currentAttributes = controller.getSelectionStyle().attributes;
            if (currentAttributes.containsKey(Attribute.codeBlock.key) ||
                currentAttributes.containsKey(Attribute.h1.key)) {
              controller.formatSelection(Attribute.h5);
            } else {
              controller.formatSelection(Attribute.codeBlock);
            }
          },
          child: Image.asset(
            AppAssets.codingIcon,
            width: 20,
            height: 20,
          ),
        ),
        QuillToolbarCameraButton(controller: controller),
        QuillToolbarVideoButton(controller: controller),
        GestureDetector(
          onTap: () {
            final currentAttributes = controller.getSelectionStyle().attributes;
            if (currentAttributes.containsKey(Attribute.h1.key) ||
                currentAttributes.containsKey(Attribute.codeBlock.key)) {
              controller.formatSelection(Attribute.h4);
            } else {
              controller.formatSelection(Attribute.h1);
            }
          },
          child: SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              AppAssets.title,
              colorFilter:
                  ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
            ),
          ),
        ),
      ],
    );
  }
}
