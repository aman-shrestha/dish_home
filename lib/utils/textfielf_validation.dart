class ValidatorUtils {
  String? validateFName(value) {
    var len = value.toString().length;
    if (value == null || value.isEmpty) {
      return 'Please enter first name';
    }
    if (value is! String) {
      return 'Invalid input type. Please enter a valid last name';
    }
    return null;
  }

  String? validateName(value) {
    var len = value.toString().length;
    if (value == null || value.isEmpty) {
      return 'Please enter name';
    }
    if (value is! String) {
      return 'Invalid input type. Please enter a valid last name';
    }
    return null;
  }

  String? validateLName(value) {
    var len = value.toString().length;
    if (value == null || value.isEmpty) {
      return 'Please enter last name';
    }
    return null;
  }

  String? validatePhone(value) {
    var len = value.toString().length;
    if (value == null || value.isEmpty) {
      return 'Please enter Phone Number';
    } else if (len < 10) {
      return 'PhoneNumber format incorrect';
    } else if (len > 10) {
      return "PhoneNumber exceeded.";
    }
    return null;
  }

  String? validateEmail(value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value) || value == null) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  String? validateConfirmPassword(String confirmPassword, String password) {
    // Confirm password must match the original password.
    if (confirmPassword != password) {
      return 'Passwords do not match';
    }
    return null;
  }
  String? validateOTP(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the OTP';
    }

    // Assuming that the OTP should be a 6-digit number
    if (value.length != 6 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Please enter a valid 6-digit OTP';
    }

    return null; // Return null if the validation passes
  }
}
