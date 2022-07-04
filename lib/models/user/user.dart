class User {
  final String? mail, firstName, lastName, password;
  final int? phone;

  User({
    required this.mail,
    required this.password,
    this.firstName,
    this.lastName,
    this.phone,
  });

  User copyWith({
    String? mail,
    String? password,
    String? firstName,
    String? lastName,
    int? phone,
  }) =>
      User(
        mail: mail ?? this.mail,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phone: phone ?? this.phone,
      );
}
