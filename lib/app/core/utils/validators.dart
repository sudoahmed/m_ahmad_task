abstract class Validators {
  static String? emailValidator(String? value) {
    // Check for null or empty input
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    // Trim spaces and check with regex
    final trimmedValue = value.trim();

    // Improved and widely accepted email regex
    final emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    );

    if (!emailRegex.hasMatch(trimmedValue)) {
      return 'Please enter a valid email address';
    }

    return null; // Valid email
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }

    final val = value.trim();

    if (val.length < 8) {
      return 'Must be at least 8 characters';
    }

    if (!RegExp(r'[A-Za-z]').hasMatch(val)) {
      return 'At least one letter is required';
    }

    if (!RegExp(r'\d').hasMatch(val)) {
      return 'At least one number is required';
    }

    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(val)) {
      return 'At least one special character is required';
    }

    return null; // Password is valid
  }
}
