import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_study/layout/default_layout.dart';
import 'package:provider_study/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    // isSpicy값이 변할때만 화면 렌더링 해줘
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));
    ref.listen(
      selectProvider.select(
        (value) => value.hasBought,
      ),
      (previous, next) {
        print('next$next');
      },
    );

    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              state.toString(),
            ),
            // Text(state.name),
            // Text(
            //   state.isSpicy.toString(),
            // ),
            // Text(
            //   state.hasBought.toString(),
            // ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleIsSpicy();
              },
              child: const Text('Spicy Toggle'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasBought();
              },
              child: const Text('HasBought Toggle'),
            ),
          ],
        ),
      ),
    );
  }
}
