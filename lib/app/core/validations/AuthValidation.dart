class AuthValidation {
  
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
 static String? nameValidation(String? name){
    
    if( name == null ||  name.isEmpty) return  "Campo nome é obrigatório";
    if( name.length < 10 ) return "Campo de nome deve ter pelomenos 10 caractéres";
     return null;
  }
 static String? phoneValidation(String? phone){
    
    if( phone == null ||  phone.isEmpty) return  "Campo nome é obrigatório";
    if( phone[0] != "9") return "O Número deve começar com 9";
    if( phone.length < 9 ) return "Campo de nome deve ter pelomenos 10 caractéres";
     return null;
  }
 static String? passWordsValidations(String? confPassword,  String? password ){
     validationPassword(password);
     if( confPassword != password) return "As password não são iguais!";
     return null;
  }
}
