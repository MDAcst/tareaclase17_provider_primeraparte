class Usuario {
  final String firstName;
  final String avatar;

  Usuario({this.firstName, this.avatar});

  factory Usuario.fromMap(Map usuario) {
    return Usuario(
      firstName: usuario['first_name'],
      avatar: usuario['avatar'],
    );
  }
}
