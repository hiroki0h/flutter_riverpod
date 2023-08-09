import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_study/model/shopping_item_model.dart';

final shoppingListProvider =
// ShoppingListNotifier Provider로 만들기
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListNotifier(),
);

// StateNotifier 상속
// 상태관리할 타입 지정 필수
class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  // ShoppingListNotifier는 StateNotifier List 상속
  // #### ShoppingListNotifier를 Provider로 만들어야 Widget 사용할 수 있음 ####

  // StateNotifier 를 extends 하는 모든 class는 무조건 state 상태 정의를 해줘야함

  // 생성자 선언
  ShoppingListNotifier()
      : super(
          // super안에는 ShoppingListProvider 상태를 초기하는 값
          [
            ShoppingItemModel(
              name: '김치',
              quantity: 3,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '라면',
              quantity: 5,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '삼겹살',
              quantity: 10,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '수박',
              quantity: 2,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '카스테라',
              quantity: 5,
              hasBought: false,
              isSpicy: false,
            ),
          ],
        );
  void toggleHasBought({required String name}) {
    state = state // 상태를 또다른 상태로 저장
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.hasBought,
              )
            : e)
        .toList();
  }
}
