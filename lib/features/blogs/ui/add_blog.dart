import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/common/utils/custom_texts.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/widgets/button.dart';
import 'package:meruinnovators/features/blogs/ui/widgets/guill_customtoolbar.dart';
import 'package:video_player/video_player.dart';

class AddBlogScreen extends StatefulWidget {
  const AddBlogScreen({super.key});

  @override
  State<AddBlogScreen> createState() => _AddBlogScreenState();
}

class _AddBlogScreenState extends State<AddBlogScreen> {
  final quill.QuillController _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    final (isLightTheme, colorScheme) = Misc.getTheme(context);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: const TitleTexts(text: 'Add Blog'),
              actions: [
                CircleButton(
                  child: const Icon(Icons.settings),
                  onPressed: () {
                    Logger().d('Add blog document');
                    Logger().d('to plain text');
                    Logger().d(_controller.document.toPlainText());
                    Logger().d('to String');
                    Logger().d(_controller.document.toString());
                    Logger().d('to Delta');
                    Logger().d(_controller.document.toDelta());
                    Logger().d('to json');
                    Logger().d(_controller.document.toDelta().toJson());
                    Logger().d('to json string');
                    Logger().d(_controller.document.toDelta().toJson().toString());
                  },
                ),
                CircleButton(
                  onPressed: () {},
                  child: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: quill.QuillEditor(
                controller: _controller,
                configurations: const quill.QuillEditorConfigurations(
                  autoFocus: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  showCursor: true,
                ),
                focusNode: FocusNode(),
                scrollController: ScrollController(),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: QuillCustomToolbar(controller: _controller),
    );
  }
}
