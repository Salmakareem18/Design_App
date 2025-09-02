import 'package:designtraining/helper/App_colors.dart';
import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade200),
        height: 30,
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (count == 0) {
                      return;
                    }
                    count--;
                  });
                },
                child: Icon(
                  Icons.remove,
                  color: AppColors.secondColor,
                ),
              ),
            ),
            Text(
              "$count",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(
                  Icons.add,
                  color: AppColors.secondColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
