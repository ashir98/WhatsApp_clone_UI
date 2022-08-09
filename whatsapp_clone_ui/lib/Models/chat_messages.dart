// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class ChatMessages extends StatefulWidget {
  final String message;

  const ChatMessages({required this.message});

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftTop,
    color: Colors.grey,
    borderColor: Colors.transparent,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightTop,
    color: Colors.teal,
    borderColor: Colors.transparent,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Colors.grey,
          borderColor: Colors.transparent,
          borderWidth: 2,
          margin: const BubbleEdges.only(top: 8),
          child: const Text(
            'TODAY',
            style: TextStyle(fontSize: 12),
          ),
        ),
        Bubble(
          style: styleSomebody,
          child: const Text(
            'Hi Ashir. Sorry to bother you. I have a queston for you.',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Bubble(
          style: styleMe,
          child: const Text("Whats'up?", style: TextStyle(fontSize: 18)),
        ),
        Bubble(
          style: styleSomebody,
          child: const Text("I've been having a problem with my computer.",
              style: TextStyle(fontSize: 17)),
        ),
        Bubble(
          style: styleSomebody,
          margin: const BubbleEdges.only(top: 4),
          showNip: false,
          child: const Text('Can you help me?', style: TextStyle(fontSize: 17)),
        ),
        Bubble(
          style: styleMe,
          child: const Text('Ok', style: TextStyle(fontSize: 17)),
        ),
        Bubble(
          style: styleMe,
          showNip: false,
          margin: const BubbleEdges.only(top: 4),
          child: Text(widget.message, style: const TextStyle(fontSize: 17)),
        ),
      ],
    );
  }
}
