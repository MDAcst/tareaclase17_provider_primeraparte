import 'dart:convert';

class Data {
  Data({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<User> data;
  final Support support;

  Data copyWith({
    int page,
    int perPage,
    int total,
    int totalPages,
    List<User> data,
    Support support,
  }) =>
      Data(
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        total: total ?? this.total,
        totalPages: totalPages ?? this.totalPages,
        data: data ?? this.data,
        support: support ?? this.support,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        page: json["page"] == null ? null : json["page"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        total: json["total"] == null ? null : json["total"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        data: json["data"] == null
            ? null
            : List<User>.from(json["data"].map((x) => User.fromJson(x))),
        support:
            json["support"] == null ? null : Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "per_page": perPage == null ? null : perPage,
        "total": total == null ? null : total,
        "total_pages": totalPages == null ? null : totalPages,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support == null ? null : support.toJson(),
      };
}

class User {
  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  User copyWith({
    int id,
    String email,
    String firstName,
    String lastName,
    String avatar,
  }) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        avatar: json["avatar"] == null ? null : json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "avatar": avatar == null ? null : avatar,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  final String url;
  final String text;

  Support copyWith({
    String url,
    String text,
  }) =>
      Support(
        url: url ?? this.url,
        text: text ?? this.text,
      );

  factory Support.fromRawJson(String str) => Support.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"] == null ? null : json["url"],
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "text": text == null ? null : text,
      };
}
