class AppValidators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) return "This field is required";
      RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$",);
      if (!emailRegExp.hasMatch(value)) return 'Enter a valid email like name@example.com';
    return null;
  }
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return "This field is required";
      // uses look ahead to check all condition in one time but if split the should not use ^$ as it will search on a word that starts and ends with that expression
      // RegExp passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
      if (!RegExp(r'[A-Z]').hasMatch(value)) return 'Password should contains at least one upper case';
      if (!RegExp(r'[a-z]').hasMatch(value)) return 'Password should contains at least one lower case';
      if (!RegExp(r'[0-9]').hasMatch(value)) return 'Password should contains at least one digit';
      if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) return 'Password should contains at least one special character';
      if (value.length < 8) return 'Password Must be at least 8 characters in length';

    return null;
  }
}