class LoginModal {
  var error;
  String responseOther;
  var results;

  LoginModal({this.results, this.error, this.responseOther});

  static LoginModal fromJson(json) => LoginModal(
      results: json['status'] == 1 ? json : null,
      responseOther: (json['status'] == 0) ? json['message'].toString() : null,
      error: json);

  static LoginModal withError(error) =>
      LoginModal(results: null, responseOther: null, error: error);

  static LoginModal fromJsonError(json) => LoginModal(
      results: null,
      responseOther: json['status'] == 0 ? json['message'].toString(): null,
      error: json);
}

// if we have any domain class then we can write here, this way is better

// class sampleDomain {
//   final int id;
//   final String name;
//   final String image;
//   final String description;
//   final String tags;
//   final String slug;
//
//   sampleDomain(
//       {this.id, this.name, this.image, this.description, this.tags, this.slug});
//
//   sampleDomain.fromJson(Map<String, dynamic> json)
//       : id = json['id'] as int,
//         name = json['name'].toString(),
//         image = json['image'].toString(),
//         description = json['description'].toString(),
//         tags = json['tags'].toString(),
//         slug = json['slug'].toString();
// }
