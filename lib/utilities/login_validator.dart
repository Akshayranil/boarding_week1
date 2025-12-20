bool validateLoginFields({
  required String email,
  required String password,
}) {
  final emailValid =
      RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$').hasMatch(email);

  return emailValid && password.isNotEmpty;
}
