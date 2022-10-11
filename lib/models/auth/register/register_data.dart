
class RegisterData {
    RegisterData({
        required this.userId,
        required this.username,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.phone,
    });

    String userId;
    String username;
    String firstName;
    String lastName;
    String email;
    String phone;

    factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        userId: json["userID"],
        username: json["username"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "userID": userId,
        "username": username,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
    };
}
