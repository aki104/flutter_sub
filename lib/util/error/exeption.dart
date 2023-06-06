/// ネットワークエラー
class NetworkErrorException implements Exception {
  final String msg = '通信状態が不安定です';
}

/// 該当リソースが存在しないエラー(404)
class NotFoundException implements Exception {
  final String msg = '通信状態が不安定です';
}

/// 不明なエラー
class UnknownException implements Exception {
  final String msg = '不明なエラーです';
}

/// メンテナンス中
class ServerErrorException implements Exception {}

/// 強制アップデートエラー
class UpdateErrorException implements Exception {}