import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
        title: "Hello Everyone",
        backgroundColor: Colors.blue[200],
      ),
      StoryItem.pageImage(
          url:
              "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
          controller: _storyController),
      // StoryItem.pageImage(
      //     url:
      //         "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif",
      //     controller: _storyController,
      //     imageFit: BoxFit.contain),
    ];
    return Material(
        child: StoryView(
      storyItems: storyItems,
      controller: controller,
      inline: false,
      repeat: true,
    ));
  }
}
