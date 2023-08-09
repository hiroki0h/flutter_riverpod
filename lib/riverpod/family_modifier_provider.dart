import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyModifierProvier =
    FutureProvider.family<List<int>, int>((ref, data) async {
  // FutureProvider.family 면 두번째 파라미터 받음
  await Future.delayed(
    const Duration(
      seconds: 2,
    ),
  );
  return List.generate(5, (index) => index * data);
});
