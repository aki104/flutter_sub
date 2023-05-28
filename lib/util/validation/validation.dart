
import 'package:mbo/util/validation/validator.dart';

class Validation {
  const Validation._();

  ///バリデーション実行
  static String validation(
      {required List<Validator> validationList,
        required String value,
        String? value2}) {
    List<String> message = [];
    for (var validator in validationList) {
      if (!validator.validate(value, value2)) {
        message.add(validator.getMessage());
      }
    }
    return message.isEmpty ? '' : message.first;
  }

  ///全てのバリデーション判定
  static bool isAllValid({required List<String> messageList}) {
    bool isValid = false;
    for (var massage in messageList) {
      if (massage.isNotEmpty) {
        isValid = true;
      }
    }
    return isValid;
  }
}

enum ValidationType {
  mail,
  password,
  rePassword,
}

extension InputFormTypeEx on ValidationType {
  List<Validator> get validatorList {
    switch (this) {
      case ValidationType.mail:
        return [RequiredValidator(), EmailValidator()];
      case ValidationType.password:
        return [RequiredValidator(), ContainsAlphanumericalValidator()];
      case ValidationType.rePassword:
        return [RequiredValidator(), MachStringValidator()];
    }
  }
}
