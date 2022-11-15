import 'package:ecommerce/utils/app_layout.dart';
import 'package:ecommerce/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firsthalf;
  late String secondhalf;

  bool hiddenText = true;

  double textHeight = AppLayout.getHeight(200);

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firsthalf = widget.text.substring(0, textHeight.toInt());
      secondhalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firsthalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondhalf.isEmpty
            ? Text(
                firsthalf,
                style: Styles.textStyle3.copyWith(
                  color: Colors.black,
                ),
              )
            : Column(
                children: [
                  Text(
                    hiddenText ? ('$firsthalf...') : (firsthalf + secondhalf),
                    style: Styles.textStyle3.copyWith(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          hiddenText ? 'Show more' : 'Show less',
                          style: Styles.textStyle3,
                        ),
                        Icon(hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up)
                      ],
                    ),
                  )
                ],
              ));
  }
}
