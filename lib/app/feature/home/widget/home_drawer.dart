import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: [
          ListTile(
            leading: const Icon(Icons.article_outlined),
            title: const Text("오픈소스 라이센스"),
            onTap: () {
              context.push("/license");
            },
          ),
        ],
      ),
    );
  }
}
