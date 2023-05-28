///バリデーションのタイプを定義するファイル

abstract class Validator<T> {
  bool validate(T value, [T value2 ]);
  String getMessage();
}

///必須バリデーション
class RequiredValidator implements Validator<String?> {
  @override
  bool validate(String? value, [String? value2]) {
    if (value == null) {
      return false;
    }
    return value.trim().isNotEmpty;
  }

  @override
  String getMessage() => '入力必須項目です。';
}

///最大値バリデーション
class MaxLengthValidator implements Validator<String> {
  MaxLengthValidator({required this.maxLength});
  int maxLength;

  @override
  bool validate(String value, [String? value2]) {
    return value.length <= maxLength;
  }

  @override
  String getMessage() => '$maxLength文字以下で入力してください。';
}

///文字列一致バリデーション
class MachStringValidator implements Validator<String?> {
  @override
  bool validate(String? value1, [String? value2]) {
    if (value1 != value2) {
      return false;
    } else if (value1 == null && value2 == null ||
        value1 == '' && value2 == '') {
      return false;
    } else {
      return true;
    }
  }

  @override
  String getMessage() => '一致していません';
}

///英数字を含む8文字以上
class ContainsAlphanumericalValidator implements Validator<String?> {
  @override
  bool validate(String? value, [String? value2]) {
    if (value == null) {
      return false;
    }
    return RegExp(r"^(?=.*[a-z])(?=.*\d)[a-zA-Z\d.?/-]{8,}$").hasMatch(value);
  }

  @override
  String getMessage() => '英数字を含む8文字以上で入力してください。';
}

///emailバリデーション
class EmailValidator implements Validator<String?> {
  @override
  bool validate(String? value, [String? value2]) {
    if (value == null) {
      return false;
    }
    return RegExp(
        r"^[a-zA-Z\d.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$")
        .hasMatch(value);
  }

  @override
  String getMessage() => 'メールの形式が正しくありません。';
}
