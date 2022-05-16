import 'package:flutter/material.dart';
import 'package:task2/style/textStyle.dart';
import 'package:task2/widget/taskbanner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                      Text(
                        "List Name",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
                    ],
                  ),
                ),
                const TaskBanner(title: "task1"),
                const TaskBanner(title: "task2"),
                const TaskBanner(title: "task3"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(56, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down),
                        ),
                        Text(
                          "completed 2",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const TaskBanner(
                  title: "Task 4",
                  isCompleted: true,
                ),
                const TaskBanner(
                  title: "Task 5",
                  isCompleted: true,
                )
              ],
            ),
          ),
        ));
  }
}
