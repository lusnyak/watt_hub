// Method to validate email
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter email';
  }
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}
