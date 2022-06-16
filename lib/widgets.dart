import 'package:flutter/material.dart';

RichText fancyText(String text) {
  List<TextSpan> body = [];
  bool bold = false;

  for (String string in text.split('*')) {
    if (string.isNotEmpty) {
      body.add(TextSpan(
        text: string,
        style: bold
            ? const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
            : const TextStyle(color: Colors.black),
      ));
    }

    bold = !bold;
  }

  return RichText(
    text: TextSpan(text: '', children: body),
  );
}

class MarkdownText extends StatelessWidget {
  const MarkdownText(
    this.text, {
    Key? key,
    this.regular = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    this.bold = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  }) : super(key: key);

  final String text;
  final TextStyle regular;
  final TextStyle bold;

  @override
  Widget build(BuildContext context) {
    bool isBold = true;

    bool flipBold() {
      isBold = !isBold;
      return isBold;
    }

    return RichText(
      text: TextSpan(children: [
        for (String string in text.split('*'))
          TextSpan(
            text: string,
            style: flipBold() ? bold : regular,
          )
      ]),
    );
  }
}

class Page extends StatelessWidget {
  const Page({
    required this.title,
    this.text,
    this.child,
    this.menu,
    this.generateNavButtons = true,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget? child;
  final String? text;
  final Map<String, String>? menu;
  final bool generateNavButtons;

  @override
  Widget build(BuildContext context) {
    Function()? createLink(String link) {
      if (link == '') return () => Navigator.pop(context);
      if (link == 'unimpl') return null;
      return () => Navigator.pushNamed(context, link);
    }

    List<Widget> children = [
      if (text != null) MarkdownText(text!),
      if (child != null) child!,
    ];

    menu?.forEach((key, value) {
      children.add(ListTile(
        onTap: createLink(value),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        title: Text(
          key,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        tileColor: value == 'unimpl' ? Colors.grey : Colors.deepPurple,
        textColor: Colors.white,
        contentPadding: const EdgeInsets.all(15),
      ));
    });

    if (generateNavButtons) {
      children.add(ListTile(
        title: Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Назад',
                textAlign: TextAlign.left,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text(
                'Алгоритмы',
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => children[index],
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: children.length,
        addRepaintBoundaries: false,
        padding: const EdgeInsets.all(18),
      ),
    );
  }
}
