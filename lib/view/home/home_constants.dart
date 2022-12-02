class HomeConstants {
  static HomeConstants? _instace;
  static HomeConstants? get instance {
    _instace ??= HomeConstants._init();
    return _instace;
  }

  HomeConstants._init();

  final String welcomeText = "Good Morning";
  final String userName = "Gülsen";
  final String wish = 'We Wish you have a good day';
  final String logoPath = "logo-dJa";

  final String imgPathVC1 = "mask-group";
  final String titleVC1 = "Basics";
  final String subTitleVC1 = "COURSE";
  final String bottomTextVC1 = "3-10 MIN";
  final String btnTextVC1 = "START";

  final String imgPathVC2 = "mask-group-XAS";
  final String titleVC2 = "Relaxation";
  final String subTitleVC2 = "MUSIC";

  final String playCardImg = "mask-group-A3t";
  final String playCardTitle = "Daily Thought";
  final String playCardSubTitle = "MEDITATION";
  final String playCardMinute = "3-10 MIN";
  final String playCardPlayImgPath = "group-6-kNN";

  final String recomendedText = 'Recomended for you';
}
