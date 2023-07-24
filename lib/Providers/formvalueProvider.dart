import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormValuesNotifier extends StateNotifier<Map<String, dynamic>> {
  FormValuesNotifier() : super({});

  void updateValues(Map<String, dynamic> values) {
    state = values;
  }
}

final formValuesProvider =
    StateNotifierProvider<FormValuesNotifier, Map<String, dynamic>>(
  (ref) => FormValuesNotifier(),
);
