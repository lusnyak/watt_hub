T? findById<T>(List<T> list, dynamic id, dynamic Function(T) getId) {
  if (id == null) return null;
  for (var item in list) {
    if (getId(item) == id) {
      return item;
    }
  }
  return null;
}

List<int> getDurationList({int interval = 15}) {
  List<int> durationList = [];
  int min = 15;
  int max = 180;
  int temp = min;
  while (temp <= max) {
    temp += interval;
    durationList.add(temp);
  }
  // for (int i = minute; i <= hour * 60; i += 15) {
  //   String hour = i ~/ 60 == 0 ? '' : '${i ~/ 60} h';
  //   String minute = i % 60 == 0 ? '' : '${i % 60} min';
  //   durationList.add("$hour $minute");
  // }

  return durationList;
}