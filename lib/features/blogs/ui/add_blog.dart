import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:meruinnovators/common/utils/custom_texts.dart';
import 'package:meruinnovators/common/widgets/button.dart';
import 'package:meruinnovators/features/blogs/ui/widgets/guill_customtoolbar.dart';

class AddBlogScreen extends StatefulWidget {
  const AddBlogScreen({super.key});

  @override
  State<AddBlogScreen> createState() => _AddBlogScreenState();
}

class _AddBlogScreenState extends State<AddBlogScreen> {
  final quill.QuillController _controller =
      quill.QuillController.basic();


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
                ),
                CircleButton(
                  onPressed: () {},
                  child: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: quill.QuillEditor.basic(
                controller: _controller,
                configurations: quill.QuillEditorConfigurations(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  customStyles: quill.DefaultStyles(
                    inlineCode: quill.InlineCodeStyle(
                      style: TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: QuillCustomToolbar(controller: _controller,)
            ),
          ],
        ),
      ),
    );
  }
}
