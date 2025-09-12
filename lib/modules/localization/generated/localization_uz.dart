// ignore_for_file: always_use_package_imports

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'localization.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class L10nUz extends L10n {
  L10nUz([String locale = 'uz']) : super(locale);

  @override
  String get appName => 'IT-Navigator';

  @override
  String get onboarding_title_1 => 'IT Olamida O\'z Yo\'lingizni Toping!';

  @override
  String get onboarding_subtitle_1 => 'Imkoniyati cheklanganlar uchun maxsus yaratilgan dasturimiz yordamida IT sohasini kashf qiling.';

  @override
  String get onboarding_title_2 => 'Yangi Ko\'nikmalar va Kasblar O\'rganing!';

  @override
  String get onboarding_subtitle_2 => 'Dasturlashdan tortib, sun\'iy intellektgacha – barcha IT kasblar haqida bilib oling.';

  @override
  String get onboarding_title_3 => 'Sun\'iy Intellekt Sizning Yordamchingiz!';

  @override
  String get onboarding_subtitle_3 => 'Savollaringizga AI yordamida javob oling va IT sohasidagi muammolaringizni hal qiling.';

  @override
  String get next => 'Keyingi';

  @override
  String get welcome => 'Ilovamizga Xush Kelibsiz!';

  @override
  String get loginExistingAccount => 'Mavjud bo\'lgan hisobga kirish';

  @override
  String get username => 'Ismingiz';

  @override
  String get password => 'Parol';

  @override
  String get login => 'kirish';

  @override
  String get forgotPassword => 'Parolni unutdingizmi?';

  @override
  String get haveAccount => 'Hisobingiz yo\'qmi?';

  @override
  String get signUp => 'Ro\'yhatdan o\'tish';

  @override
  String get letsStart => 'Boshladik';

  @override
  String get createAccount => 'Imkoniyatlardan to\'liq foydalanish uchun Ro\'yhatdan o\'ting';

  @override
  String get surname => 'Familyangiz';

  @override
  String get email => 'Email';

  @override
  String get create => 'Yaratish';

  @override
  String get register => 'Ro\'yhatdan o\'tish';

  @override
  String get fillField => 'Iltimos, barcha ma\'lumotlarni kiriting';
}
