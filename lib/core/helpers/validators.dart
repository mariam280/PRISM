/// Shared form validators, reusable across Sign in / Register /
/// Forgot Password so the rules stay consistent (and only live in one
/// place) instead of being copy-pasted per form.
class Validators {
  Validators._();

  static final RegExp _emailPattern =
      RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is required';
    }
    if (!_emailPattern.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? password(String? value, {int minLength = 6}) {
    if (value == null || value.isEmpty) {
      return 'Field is required';
    }
    if (value.length < minLength) {
      return 'Password must be at least $minLength characters long';
    }
    return null;
  }

  static final RegExp _namePattern = RegExp(r'^[a-zA-Z\u0600-\u06FF]+(\s[a-zA-Z\u0600-\u06FF]+)+$');

  static String? fullName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Field is required';
    }
    if (!_namePattern.hasMatch(value.trim())) {
      return 'Please enter your full name (first and last)';
    }
    return null;
  }
}