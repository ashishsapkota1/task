class ApiResponseModel {
  final String requestId;
 List<LessonList> items;

  ApiResponseModel({required this.items,required this.requestId});

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) {
    return ApiResponseModel(
      requestId: json['requestId'],
      items: (json['items'] as List)
          .map((itemJson) => LessonList.fromJson(itemJson))
          .toList(),
    );
  }
}

class LessonList {
  String createdAt;
  String name;
  int duration;
  String category;
  bool locked;
  String id;

  LessonList(
      {required this.createdAt,
      required this.name,
      required this.duration,
      required this.category,
      required this.locked,
      required this.id});

  factory LessonList.fromJson(Map<String, dynamic> json) {
    return LessonList(
        createdAt: json['createdAt'],
        name: json['name'],
        duration: json['duration'],
        category: json['category'],
        locked: json['locked'],
        id: json['id']);
  }
}
