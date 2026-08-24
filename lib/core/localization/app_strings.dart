class AppStrings {
  static const Map<String, Map<String, String>> _values = {
    'ar': {
      'welcome_login': 'مرحبًا بك في الجدول',
      'login_subtitle': 'سجّل الدخول واستمتع بتجربة رياضية متكاملة',
      'email_or_phone': 'البريد الإلكتروني أو رقم الجوال',
      'password': 'كلمة المرور',
      'forgot_password': 'نسيت كلمة المرور؟',
      'login': 'تسجيل الدخول',
      'apple': 'Apple',
      'google': 'Google',
      'phone_login': 'دخول برقم الجوال',
      'no_account': 'ليس لديك حساب؟',
      'create_account': 'إنشاء حساب جديد',
      'safe_environment': 'بيئة آمنة',
      'safe_environment_subtitle': 'تجربة موثوقة وآمنة',
      'challenges_rewards': 'تحديات ومكافآت',
      'challenges_rewards_subtitle': 'ارفع مستواك واكسب',
      'sports_community': 'مجتمع رياضي',
      'sports_community_subtitle': 'آلاف اللاعبين بانتظارك',
      'easy_scheduling': 'تنظيم سهل',
      'easy_scheduling_subtitle': 'احجز أو أنشئ في خطوات بسيطة',
      'terms': 'الشروط والأحكام',
      'privacy': 'سياسة الخصوصية',
      'language_ar': 'AR',
    },

    'en': {
      'welcome_login': 'Welcome to Aljadwal',
      'login_subtitle': 'Sign in and enjoy a complete sports experience',
      'email_or_phone': 'Email or phone number',
      'password': 'Password',
      'forgot_password': 'Forgot password?',
      'login': 'Sign in',
      'apple': 'Apple',
      'google': 'Google',
      'phone_login': 'Sign in with phone',
      'no_account': 'Don’t have an account?',
      'create_account': 'Create a new account',
      'safe_environment': 'Safe Environment',
      'safe_environment_subtitle': 'Trusted and secure experience',
      'challenges_rewards': 'Challenges & Rewards',
      'challenges_rewards_subtitle': 'Level up and earn',
      'sports_community': 'Sports Community',
      'sports_community_subtitle': 'Thousands of players await you',
      'easy_scheduling': 'Easy Scheduling',
      'easy_scheduling_subtitle': 'Book or create in a few simple steps',
      'terms': 'Terms & Conditions',
      'privacy': 'Privacy Policy',
      'language_ar': 'EN',
    },
  };

  static String get(String languageCode, String key) {
    return _values[languageCode]?[key] ?? key;
  }
}
