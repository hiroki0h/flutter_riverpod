import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_study/screen/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      // 상태관리하려면 위에 ProviderScope 씌워주기
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
