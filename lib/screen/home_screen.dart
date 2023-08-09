import 'package:flutter/material.dart';
import 'package:provider_study/layout/default_layout.dart';
import 'package:provider_study/screen/state_notifier_provider_screen.dart';
import 'package:provider_study/screen/state_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateProviderScreen(),
                ),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateNotifilerProviderScreen(),
                ),
              );
            },
            child: const Text('StateNotifilerProviderScreen'),
          ),
        ],
      ),
    );
  }
}
