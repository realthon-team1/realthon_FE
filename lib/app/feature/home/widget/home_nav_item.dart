import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:flutter/material.dart';

class HomeNavItem extends StatelessWidget {
  const HomeNavItem({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: context.getTextTheme.small.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
