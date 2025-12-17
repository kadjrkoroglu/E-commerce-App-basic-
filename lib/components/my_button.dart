import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(25),
        child: child,
      ),
    );
  }
}
