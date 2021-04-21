class StoryBook {
  String name;
  int pages;
  List<String> subtitles;
  StoryBook(
    this.name,
    this.pages,
    this.subtitles,
  );

  void subtitleAdd(String x) {
    subtitles.add(x);
  }

  List<String> getSubtitleList() {
    return subtitles;
  }
}
