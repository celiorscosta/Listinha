import 'package:flutter/material.dart';

class EditBoardTask extends StatefulWidget {
  const EditBoardTask({super.key});

  @override
  State<EditBoardTask> createState() => _EditBoardTaskState();
}

class _EditBoardTaskState extends State<EditBoardTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTINHA'),
      ),
    );
  }
}
