import 'package:flutter/material.dart';

class AppLanguage extends ChangeNotifier {
  Locale _locale = const Locale('ar');

  Locale get locale => _locale;

  bool get isArabic => _locale.languageCode == 'ar';

  void setArabic() {
    if (isArabic) return;

    _locale = const Locale('ar');
    notifyListeners();
  }

  void setEnglish() {
    if (!isArabic) return;

    _locale = const Locale('en');
    notifyListeners();
  }

  void toggle() {
    if (isArabic) {
      setEnglish();
    } else {
      setArabic();
    }
  }
}

class AppLanguageScope extends InheritedNotifier<AppLanguage> {
  const AppLanguageScope({
    super.key,
    required AppLanguage language,
    required super.child,
  }) : super(notifier: language);

  static AppLanguage of(BuildContext context) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<AppLanguageScope>();

    assert(scope != null, 'AppLanguageScope not found in widget tree.');

    return scope!.notifier!;
  }
}
