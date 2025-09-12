class SignUpUseCaseParams {
  const SignUpUseCaseParams({
    this.username,
    this.surname,
    required this.email,
    required this.password,
  });

  final String? username;
  final String? surname;
  final String email;
  final String password;

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'surname': surname,
      'email': email,
      "password": password,
    };
  }

  bool get isFilled =>
      (username?.isNotEmpty ?? false) &&
      (username?.isNotEmpty ?? false) &&
      email.isNotEmpty &&
      password.isNotEmpty;
}
