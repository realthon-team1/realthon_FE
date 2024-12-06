import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.history,
              color: context.getColorScheme.primary,
              size: 20,
            ),
            const SizedBox(width: 3),
            Text(
              "기록",
              style: context.getTextTheme.h4,
            ),
          ],
        ),
      ),
    );
  }
}
