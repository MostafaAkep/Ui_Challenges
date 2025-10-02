import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InteractiveWidget extends StatefulWidget {
  const InteractiveWidget({super.key});

  @override
  State<InteractiveWidget> createState() => _InteractiveWidgetState();
}

class _InteractiveWidgetState extends State<InteractiveWidget> {
  final List<Color> colors = [Colors.blue, Colors.red, Colors.pink];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Interactive Widget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: colors.map((targetColor) {
              return DragTarget<Color>(
                onAcceptWithDetails: (details) {
                  if (details.data == targetColor) {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("✅ The color is correct")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("❌ The color is not correct")),
                    );
                  }
                },
                builder: (context, _, __) {
                  return Container(
                    color: targetColor,
                    width: 100.w,
                    height: 100.h,
                  );
                },
              );
            }).toList(),
          ),

        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: colors.map((dragColor) {
              return Draggable<Color>(
                data: dragColor,
                feedback: Container(
                  color: dragColor.withOpacity(0.7),
                  width: 80.w,
                  height: 80.h,
                ),
                childWhenDragging: Container(
                  color: Colors.grey,
                  width: 80.w,
                  height: 80.h,
                ),
                child: Container(
                  color: dragColor,
                  width: 80.w,
                  height: 80.h,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
