import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    const progress = 0.5;
    const progressText = '1/5';
    const title = 'Nova lista de tarefas';
    const statusText = 'Pendente';
    const iconData = Icons.access_alarm;
    final backgroundColor = Colors.red.withOpacity(0.5);
    const color = Colors.red;

    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(iconData),
              Spacer(),
              Text(statusText),
            ],
          ),
          const Spacer(),
          const Text(title),
          const LinearProgressIndicator(
            value: progress,
            color: color,
          ),
          const Text(progressText),
        ],
      ),
    );
  }
}
