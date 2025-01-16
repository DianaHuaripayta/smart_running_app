
//Inmutable
import 'package:riverpod/riverpod.dart';
import 'package:smart_running_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);
//Flag Cambia por valores estáticos
final isDarkModeProvider = StateProvider((ref) => false);
final selectColorProvider = StateProvider((ref) => 0);
//Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());
  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
  void isChageColorIndex(int colorIndex){
        state = state.copyWith(selectedColor:colorIndex);
  }
}
