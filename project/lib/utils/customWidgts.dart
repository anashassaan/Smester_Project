import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';

class ReusableButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final btnColour;
  final btnChild;
  final btnHeight;
  final btnWidth;
  final btnCircularRadius;
  const ReusableButton(
      {super.key,
      this.btnCircularRadius,
      this.btnWidth,
      this.btnHeight,
      this.btnChild,
      this.btnColour});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: btnHeight,
      width: btnWidth,
      decoration: BoxDecoration(
        color: btnColour,
        borderRadius: BorderRadius.circular(btnCircularRadius),
      ),
      child: btnChild,
    );
  }
}

Widget CenterTextContainer(
    {required double tHeight,
    required double tLeft,
    required String cText,
    required double fSize,
    required Color tColor}) {
  print(
      'tLeft: $tLeft,tHeight: $tHeight, cText: $cText, fSize: $fSize, tColor: $tColor');

  return Container(
    child: Padding(
      padding: EdgeInsets.only(top: tHeight, left: tLeft),
      child: Container(
        child: Text(
          cText,
          style: TextStyle(
            fontSize: fSize,
            color: tColor,
          ),
        ),
      ),
    ),
  );
}

class CustomCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.transparent // Make the rest transparent
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = whiteColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4; // Adjust stroke width as needed

    // Draw the transparent circle
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      paint,
    );

    // Draw the border
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CircleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: CustomPaint(
        painter: CustomCircle(),
      ),
    );
  }
}

class Emoji extends StatelessWidget {
  final String imagePath;
  final double left;
  final double top;
  final Color avatarColor;

  const Emoji({
    super.key,
    required this.imagePath,
    required this.left,
    required this.top,
    this.avatarColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
      ),
      child: Container(
        width: 45,
        height: 45,
        child: Center(
          child: CircleAvatar(
            backgroundColor: avatarColor,
            foregroundImage: AssetImage(imagePath),
          ),
        ),
      ),
    );
  }
}

class App_emoji_search extends StatelessWidget {
  final String inputText;
  const App_emoji_search({
    required this.inputText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Emoji(
          imagePath: 'assests/Icons/emoji.png',
          left: 13,
          top: 54,
          avatarColor: backgrounsColor,
        ),
        Emoji(
          imagePath: 'assests/Icons/Search.png',
          left: 13,
          top: 54,
          avatarColor: backgrounsColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 65),
          child: Container(
            width: 100,
            height: 27,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 6,
              ),
              child: Text(
                inputText,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Emoji(
          imagePath: 'assests/Icons/add_friend.png',
          left: 60,
          top: 54,
          avatarColor: backgrounsColor,
        ),
      ],
    );
  }
}

class TextDivider extends StatelessWidget {
  final double indent;
  final double endIndent;
  final double top;

  const TextDivider({
    super.key,
    required this.indent,
    required this.endIndent,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: top),
        child: Divider(
          color: Colors.black, // Color of the divider
          thickness: 0.5,
          indent: indent,
          endIndent: endIndent,
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                foregroundImage: AssetImage('assests/Icons/emoji.png'),
              ),
            ),
          ),
          title: Text('${items[index]}'),
        );
      },
    );
  }
}
