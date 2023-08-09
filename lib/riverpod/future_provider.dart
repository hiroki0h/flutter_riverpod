import 'package:flutter_riverpod/flutter_riverpod.dart';

final multiplesFutureProvier = FutureProvider<List<int>>((ref) async {
  await Future.delayed(
    const Duration(
      seconds: 2,
    ),
  );
  // throw Exception('에러');
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
});
