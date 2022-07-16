//   "picture": {
//     "large": "https://randomuser.me/api/portraits/women/4.jpg",
//     "medium": "https://randomuser.me/api/portraits/med/women/4.jpg",
//     "thumbnail": "https://randomuser.me/api/portraits/thumb/women/4.jpg"
//   },
class UserPicture {
  final String large;
  final String medium;
  final String thumbnail;
  UserPicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory UserPicture.fromMap(Map<String, dynamic> json) {
    return UserPicture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}
