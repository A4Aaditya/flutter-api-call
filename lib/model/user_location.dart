//  "location": {
//     "street": {
//       "number": 4785,
//       "name": "Stærevej"
//     },
//     "city": "København V",
//     "state": "Nordjylland",
//     "country": "Denmark",
//     "coordinates": {
//       "latitude": "1.1917",
//       "longitude": "39.3365"
//     },
//     "timezone": {
//       "offset": "-6:00",
//       "description": "Central Time (US & Canada), Mexico City"
//     }
//   },

class UserLocation {
  final String city;
  final String state;
  final String country;
  final UserStreet street;
  final UserTimeZone timezone;

  UserLocation({
    required this.city,
    required this.country,
    required this.state,
    required this.street,
    required this.timezone,
  });

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      street: UserStreet.fromMap(json['street']),
      timezone: UserTimeZone.fromMap(json['timezone']),
    );
  }
}

class UserStreet {
  final int number;
  final String name;

  UserStreet({
    required this.name,
    required this.number,
  });
  factory UserStreet.fromMap(Map<String, dynamic> json) {
    return UserStreet(
      name: json['name'],
      number: json['number'],
    );
  }
}

class UserTimeZone {
  final String offset;
  final String description;

  UserTimeZone({
    required this.description,
    required this.offset,
  });
  factory UserTimeZone.fromMap(Map<String, dynamic> json) {
    return UserTimeZone(
      description: json['description'],
      offset: json['offset'],
    );
  }
}
