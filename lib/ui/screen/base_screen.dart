import 'package:employees/ui/widgets/todo_widget.dart';
import 'package:employees/ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                UserWidget(name: "name", email: "email", subTitle: "subTitle", image: "image"),
                ToDoWidget(data: [],),
              ],
            ),
          ],
        ),
      )
    );
  }
}
