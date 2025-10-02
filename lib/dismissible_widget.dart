import 'package:flutter/material.dart';

class Task {
  final int id;
  final String title;

  Task(this.id, this.title);
}

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  List<Task> tasks = [
    Task(1, "📚 learn flutter"),
    Task(2, "🛒 go to the shooping"),
    Task(3, "💻 done the prject"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible with reorderable"),
      ),
      body: ReorderableListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex -= 1;
            final task = tasks.removeAt(oldIndex);
            tasks.insert(newIndex, task);
          });
        },
        children: [
          for (int index = 0; index < tasks.length; index++)
            Dismissible(
              key: ValueKey(tasks[index].id),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              secondaryBackground: Container(
                color: Colors.grey,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.delete, color: Colors.blue),
              ),
              confirmDismiss: (direction) async {
                return await showDialog<bool>(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("تأكيد الحذف"),
                        content: Text(
                          "هل تريد حذف '${tasks[index].title}'؟",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(ctx, false),
                            child: const Text("cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(ctx, true),
                            child: const Text("delete"),
                          ),
                        ],
                      ),
                    ) ??
                    false;
              },
              onDismissed: (direction) {
                final removedTask = tasks[index];
                final removedIndex = index;

                setState(() {
                  tasks.removeAt(index);
                });

                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "'${removedTask.title}' was deleted",
                    ),
                    action: SnackBarAction(
                      label: "cancel",
                      onPressed: () {
                        setState(() {
                          tasks.insert(removedIndex, removedTask);
                        });
                      },
                    ),
                  ),
                );
              },
              child: ListTile(
                key: ValueKey("tile-${tasks[index].id}"),
                title: Text(tasks[index].title),
                trailing: const Icon(Icons.drag_handle),
              ),
            ),
        ],
      ),
    );
  }
}
