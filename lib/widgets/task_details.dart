import 'package:flutter/material.dart';
import 'package:todoapp/data/models/task.dart';
import 'package:todoapp/untils/extentions.dart';
import 'package:todoapp/widgets/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:gap/gap.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({
    super.key,
    required this.task,
  });
  final Task task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: task.category.color.withOpacity(0.3),
            child: Icon(
              task.category.icon,
              color: task.category.color,
            ),
          ),
          const Gap(1),
          Text(
            task.title,
            style: style.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            task.time,
            style: style.titleMedium,
          ),
          const Gap(1),
          Visibility(
            visible: !task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Task to be completed on ${task.date}',
                  style: const TextStyle(color: Colors.red),
                ),
                const Icon(
                  Icons.check_box,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          const Gap(1),
          Divider(
            thickness: 1.5,
            color: task.category.color,
          ),
          const Gap(1),
          Text(
            task.note.isEmpty
                ? 'There is no addititonal note for ths task'
                : task.note,
          ),
          const Gap(10),
          Visibility(
            visible: task.isCompleted,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Task completed',
                  style: TextStyle(color: Colors.green),
                ),
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
