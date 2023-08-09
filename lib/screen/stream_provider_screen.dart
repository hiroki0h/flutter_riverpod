import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_study/layout/default_layout.dart';
import 'package:provider_study/riverpod/stream_provider.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multipleStreamProvider);

    return DefaultLayout(
      title: 'StreamProviderScreen',
      body: Center(
        child: state.when(
          data: (data) {
            return Text(
              data.toString(),
              textAlign: TextAlign.center,
            );
          },
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
