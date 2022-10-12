class Tuple<T1, ErrorModel, int> {
  final T1 response;
  final ErrorModel error;
  final int statusCode;

  Tuple({
    required this.response,
    required this.error,
    required this.statusCode,
  });

  factory Tuple.fromJson(Map<String, dynamic> json) {
    return Tuple(
      response: json['response'],
      error: json['error'],
      statusCode: json['statusCode'],
    );
  }
}
