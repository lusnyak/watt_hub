T? findById<T>(List<T> list, dynamic id, dynamic Function(T) getId) {
  if (id == null) return null;
  for (var item in list) {
    if (getId(item) == id) {
      return item;
    }
  }
  return null;
}
