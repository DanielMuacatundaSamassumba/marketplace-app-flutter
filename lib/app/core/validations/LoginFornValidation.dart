class LoginFormValidation {
  static String? validationPassword(String? password) {
    if (password == null || password.isEmpty) {
      return "A palavra-passe é obrigatória!";
    }

    if (password.length < 8) {
      return "A palavra-passe deve conter pelo menos 8 caracteres!";
    }

    return null;
  }

  static String? validationEmail(String? email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (email == null) {
      return "A palavra-passe é obrigatória!";
    }

    if (!emailRegex.hasMatch(email)) {
      return "Formato de Email Encorreto";
    }

    return null;
  }
}
