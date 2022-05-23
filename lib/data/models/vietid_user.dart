class VietIdUser {
  String? accessToken;
  String? userId;
  String? userName;
  String? userAvatar;
  String? userFullName;
  String? userEmail;
  String? userPhone;

  VietIdUser(
      {this.accessToken,
      this.userId,
      this.userName,
      this.userAvatar,
      this.userFullName,
      this.userEmail,
      this.userPhone});

  VietIdUser.fromJson(Map<dynamic, dynamic> json) {
    accessToken = json['access_token'];
    userId = json['user_id'];
    userName = json['user_name'];
    userAvatar = json['user_avatar'];
    userFullName = json['user_full_name'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_avatar'] = this.userAvatar;
    data['user_full_name'] = this.userFullName;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    return data;
  }

  @override
  String toString() {
    return 'VietIdUser{accessToken: $accessToken, userId: $userId, userName: $userName, userAvatar: $userAvatar, userFullName: $userFullName, userEmail: $userEmail, userPhone: $userPhone}';
  }
}
