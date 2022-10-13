
class CompleteProfileData {
    CompleteProfileData({
        required this.accessToken,
        required this.accessTokenExpiresIn,
        required this.accessTokenExpiresAt,
        required this.refreshToken,
        required this.refreshTokenExpiresIn,
        required this.refreshTokenExpiresAt,
        required this.userId,
        required this.isVerified,
        required this.isActive,
    });

    String accessToken;
    int accessTokenExpiresIn;
    DateTime accessTokenExpiresAt;
    String refreshToken;
    int refreshTokenExpiresIn;
    DateTime refreshTokenExpiresAt;
    String userId;
    bool isVerified;
    bool isActive;

    factory CompleteProfileData.fromJson(Map<String, dynamic> json) => CompleteProfileData(
        accessToken: json["accessToken"],
        accessTokenExpiresIn: json["accessTokenExpiresIn"],
        accessTokenExpiresAt: DateTime.parse(json["accessTokenExpiresAt"]),
        refreshToken: json["refreshToken"],
        refreshTokenExpiresIn: json["refreshTokenExpiresIn"],
        refreshTokenExpiresAt: DateTime.parse(json["refreshTokenExpiresAt"]),
        userId: json["userID"],
        isVerified: json["isVerified"],
        isActive: json["isActive"],
    );

    Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "accessTokenExpiresIn": accessTokenExpiresIn,
        "accessTokenExpiresAt": accessTokenExpiresAt.toIso8601String(),
        "refreshToken": refreshToken,
        "refreshTokenExpiresIn": refreshTokenExpiresIn,
        "refreshTokenExpiresAt": refreshTokenExpiresAt.toIso8601String(),
        "userID": userId,
        "isVerified": isVerified,
        "isActive": isActive,
    };
}
