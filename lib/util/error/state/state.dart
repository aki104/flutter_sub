import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

/// エラー状態
@freezed
class ErrorStatus with _$ErrorStatus {
  /// エラーなし
  const factory ErrorStatus.noError() = NoError;

  /// ネットワークエラー
  const factory ErrorStatus.network() = Network;

  /// リソース無し(ステータスコード404)
  const factory ErrorStatus.notFound() = NotFound;

  /// サーバエラー
  const factory ErrorStatus.server() = Server;

  /// 未知エラー
  const factory ErrorStatus.unknown() = Unknown;
}
