import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentValue;
  const PageIndicator({
    Key? key,
    this.currentValue = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) =>
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: AnimatedContainer(
              curve: Curves.easeIn,
              duration: Duration(microseconds: 10),
            width: 40,
            height: 10,
            decoration: BoxDecoration(
              color: index==currentValue? Colors.lightBlueAccent: Colors.grey ,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
      ),
    );
  }
}
