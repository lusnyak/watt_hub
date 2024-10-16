abstract class Identifiable {
  dynamic get id;
}

T getElementById<T extends Identifiable>(List<T> list, dynamic id) {
  return list.firstWhere(
    (element) => element.id == id,
    orElse: () => throw Exception('Element with id $id not found'),
  );
}
