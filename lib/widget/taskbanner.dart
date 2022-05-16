import 'package:flutter/material.dart';
import 'package:task2/style/textStyle.dart';

class TaskBanner extends StatelessWidget {
  final String title;
  final bool isCompleted;

  const TaskBanner({Key? key, required this.title, this.isCompleted = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          width: double.infinity,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Radio(value: 1, groupValue: 0, onChanged: (v) {}),
                Text(
                  title,
                  style: isCompleted ? s2 : s1,
                ),
                const Spacer(),
                const Icon(Icons.favorite_border_rounded)
              ],
            ),
          )),
    );
  }
}
