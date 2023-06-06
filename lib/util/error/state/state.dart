import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

/// エラー状態
@freezed
class ErrorStatus with _$ErrorStatus {
  /// エラーなし
  const factory ErrorStatus.noError() = NoError;

  /// ネットワークエラー
  const factory ErrorStatus.networkError() = NetworkError;

  /// リソース無し(ステータスコード404)
  const factory ErrorStatus.notFoundError() = NotFoundError;

  /// サーバエラー(メンテナンスモード)
  const factory ErrorStatus.serverError() = ServerError;

  /// アップデートエラー(強制アップデート時)
  const factory ErrorStatus.updateError() = UpdateError;

  /// 未知エラー
  const factory ErrorStatus.unknownError() = UnknownError;
}
