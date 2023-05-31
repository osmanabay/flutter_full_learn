import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});

  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        // leadingWidth: 23,
        // actionsIconTheme: IconThemeData(color: Colors.red, size: 50),
        // toolbarTextStyle: const TextStyle(color: Colors.red),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
