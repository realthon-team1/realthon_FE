import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      shadowColor: Colors.black,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Colors.grey[200],
          height: 1,
        ),
      ),
      title: Row(
        children: [
          Icon(Icons.phishing, color: context.getColorScheme.primary),
          const SizedBox(width: 10),
          Text(
            "AquaGuard",
            style: context.getTextTheme.h4,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
