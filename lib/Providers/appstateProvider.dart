import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager/appstate/app_statee.dart';

final authProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AppState>((ref) {
  return AuthStateNotifier(ref);
});

class AuthStateNotifier extends StateNotifier<AppState> {
  AuthStateNotifier(this._reader) : super(const AppState.initial());
  final Ref _reader;
  void updateError(String error) {
    state = const AppState.error(data: []);
  }
}
