import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [

      StoryItem.text(title: '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum''', backgroundColor: Colors.green),

      StoryItem.pageImage(
          url:
              "https://images.app.goo.gl/ApkXpJjSKHjxCgFU8",
          controller: _storyController),

      StoryItem.pageImage(
          url:
              "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
          controller: _storyController,
          imageFit: BoxFit.contain),


    ];

    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
