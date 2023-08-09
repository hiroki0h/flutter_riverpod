import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_study/layout/default_layout.dart';
import 'package:provider_study/riverpod/family_modifier_provider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // FutureProvider.family 쓰면 Provier 생성해줘야함
    final state = ref.watch(familyModifierProvier(8));
    return DefaultLayout(
      title: 'FamilyModifierScreen',
      body: Center(
        child: state.when(
          data: (data) => Text(
            data.toString(),
            textAlign: TextAlign.center,
          ),
          error: (err, stack) => Text(
            err.toString(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
