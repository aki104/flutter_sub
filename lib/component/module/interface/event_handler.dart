 abstract class EventHandler {
  Future<void> onCreate([Arg? value]) async {
    /// 初期化処理
  }
  Future<void> load([Arg? value]) async {
    /// データロード処理
  }
  Future<void> reload([Arg? value]) async {
    /// 画面リロード処理
  }
}

typedef Arg<T>  = T;