extension TimeFormatting on int {
  String toFormatHMString() {
    String hour = this ~/ 60 == 0 ? '' : '${this ~/ 60} h';
      String minute = this % 60 == 0 ? '' : '${this % 60} min';
    return "$hour  $minute";
  }
}

