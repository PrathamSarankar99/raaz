class Address {
  final String line1;
  final String line2;
  final String city;
  final String state;
  final String country;
  final String pinCode;

  Address({
    required this.line1,
    required this.line2,
    required this.city,
    required this.state,
    required this.country,
    required this.pinCode,
  });

  static Address fromMap(Map<String, dynamic> map) {
    return Address(
      line1: map['line1'],
      line2: map['line2'],
      city: map['city'],
      state: map['state'],
      country: map['country'],
      pinCode: map['pinCode'],
    );
  }
}
