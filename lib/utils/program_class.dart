class ApiResponseModelProgram {
  final String requestId;
  List<ProgramList> items;

  ApiResponseModelProgram({required this.items,required this.requestId});

  factory ApiResponseModelProgram.fromJson(Map<String, dynamic> json) {
    return ApiResponseModelProgram(
      requestId: json['requestId'],
      items: (json['items'] as List)
          .map((itemJson) => ProgramList.fromJson(itemJson))
          .toList(),
    );
  }
}

class ProgramList{
  String createdAt;
  String name;
  String category;
  int lesson;
  String id;

  ProgramList({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
  required this.id
  });

  factory ProgramList.fromJson(Map<String , dynamic> json){
    return ProgramList(
        createdAt: json['createdAt'],
        name: json['name'],
        category: json['category'],
        lesson: json['lesson'],
        id: json['id']);
  }
}