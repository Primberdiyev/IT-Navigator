// ignore_for_file: always_use_package_imports
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localization_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n)!;
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('uz')
  ];

  /// No description provided for @appName.
  ///
  /// In uz, this message translates to:
  /// **'IT-Navigator'**
  String get appName;

  /// No description provided for @onboarding_title_1.
  ///
  /// In uz, this message translates to:
  /// **'IT Olamida O\'z Yo\'lingizni Toping!'**
  String get onboarding_title_1;

  /// No description provided for @onboarding_subtitle_1.
  ///
  /// In uz, this message translates to:
  /// **'Imkoniyati cheklanganlar uchun maxsus yaratilgan dasturimiz yordamida IT sohasini kashf qiling.'**
  String get onboarding_subtitle_1;

  /// No description provided for @onboarding_title_2.
  ///
  /// In uz, this message translates to:
  /// **'Yangi Ko\'nikmalar va Kasblar O\'rganing!'**
  String get onboarding_title_2;

  /// No description provided for @onboarding_subtitle_2.
  ///
  /// In uz, this message translates to:
  /// **'Dasturlashdan tortib, sun\'iy intellektgacha – barcha IT kasblar haqida bilib oling.'**
  String get onboarding_subtitle_2;

  /// No description provided for @onboarding_title_3.
  ///
  /// In uz, this message translates to:
  /// **'Sun\'iy Intellekt Sizning Yordamchingiz!'**
  String get onboarding_title_3;

  /// No description provided for @onboarding_subtitle_3.
  ///
  /// In uz, this message translates to:
  /// **'Savollaringizga AI yordamida javob oling va IT sohasidagi muammolaringizni hal qiling.'**
  String get onboarding_subtitle_3;

  /// No description provided for @next.
  ///
  /// In uz, this message translates to:
  /// **'Keyingi'**
  String get next;

  /// No description provided for @welcome.
  ///
  /// In uz, this message translates to:
  /// **'Ilovamizga Xush Kelibsiz!'**
  String get welcome;

  /// No description provided for @loginExistingAccount.
  ///
  /// In uz, this message translates to:
  /// **'Mavjud bo\'lgan hisobga kirish'**
  String get loginExistingAccount;

  /// No description provided for @username.
  ///
  /// In uz, this message translates to:
  /// **'Ismingiz'**
  String get username;

  /// No description provided for @password.
  ///
  /// In uz, this message translates to:
  /// **'Parol'**
  String get password;

  /// No description provided for @login.
  ///
  /// In uz, this message translates to:
  /// **'kirish'**
  String get login;

  /// No description provided for @forgotPassword.
  ///
  /// In uz, this message translates to:
  /// **'Parolni unutdingizmi?'**
  String get forgotPassword;

  /// No description provided for @haveAccount.
  ///
  /// In uz, this message translates to:
  /// **'Hisobingiz yo\'qmi?'**
  String get haveAccount;

  /// No description provided for @signUp.
  ///
  /// In uz, this message translates to:
  /// **'Ro\'yhatdan o\'tish'**
  String get signUp;

  /// No description provided for @letsStart.
  ///
  /// In uz, this message translates to:
  /// **'Boshladik'**
  String get letsStart;

  /// No description provided for @createAccount.
  ///
  /// In uz, this message translates to:
  /// **'Imkoniyatlardan to\'liq foydalanish uchun Ro\'yhatdan o\'ting'**
  String get createAccount;

  /// No description provided for @surname.
  ///
  /// In uz, this message translates to:
  /// **'Familyangiz'**
  String get surname;

  /// No description provided for @email.
  ///
  /// In uz, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @create.
  ///
  /// In uz, this message translates to:
  /// **'Yaratish'**
  String get create;

  /// No description provided for @register.
  ///
  /// In uz, this message translates to:
  /// **'Ro\'yhatdan o\'tish'**
  String get register;

  /// No description provided for @fillField.
  ///
  /// In uz, this message translates to:
  /// **'Iltimos, barcha ma\'lumotlarni kiriting'**
  String get fillField;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'uz': return L10nUz();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
