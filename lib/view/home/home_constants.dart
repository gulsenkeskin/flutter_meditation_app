class HomeConstants {
  static HomeConstants? _instace;
  static HomeConstants? get instance {
    _instace ??= HomeConstants._init();
    return _instace;
  }

  HomeConstants._init();

  final String logoPath = "logo-dJa";
  final String imgPathVC1 = "mask-group";
  final String imgPathVC2 = "mask-group-XAS";
  final String playCardImg = "mask-group-A3t";
  final String playCardPlayImgPath = "group-6-kNN";
}
