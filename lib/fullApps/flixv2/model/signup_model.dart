import 'package:flutter/services.dart';

class SignupModel {
  String? hintText;
  TextInputType? keyboardType;
  bool isVisible;
  String? labelText;
  List<TextInputFormatter>? inputFormatters = [];

  SignupModel({
    this.hintText,
    this.labelText,
    required this.keyboardType,
    required this.isVisible,
    this.inputFormatters,
  });
}

List<SignupModel> getstartWithEmail({required bool IsEmail}) {
  List<SignupModel> startWith = [];
  startWith.add(
    SignupModel(
      keyboardType: TextInputType.name,
      isVisible: false,
      hintText: 'Sophia Taylor',
      labelText: 'Name',
    ),
  );
  if (IsEmail)
    startWith.add(
      SignupModel(
        isVisible: false,
        labelText: 'Email',
        keyboardType: TextInputType.emailAddress,
        hintText: 'sofia.taylor@gmail.com',
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(10),
        ],
      ),
    );
  else {
    startWith.add(
      SignupModel(
        isVisible: false,
        labelText: 'Mobile Number',
        keyboardType: TextInputType.number,
        hintText: '+91 1234567890',
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(10),
        ],
      ),
    );
  }

  startWith.add(
    SignupModel(
      isVisible: true,
      keyboardType: TextInputType.visiblePassword,
      labelText: 'Password',
      hintText: 'Password@123',
    ),
  );
  return startWith;
} /*Icon(Icons.lock_rounded)*/
