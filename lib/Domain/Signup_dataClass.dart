class SignupModal {
  var error;
  String responseOther;
  var results;

  SignupModal({this.results, this.error, this.responseOther});

  static SignupModal fromJson(json) => SignupModal(
      results: json['status'] == true ? json : null,
      responseOther: (json['status'] != true) ? json['message'].toString() : null,
      error: json);

  static SignupModal withError(error) =>
      SignupModal(results: null, responseOther: null, error: error);

  static SignupModal fromJsonError(json) => SignupModal(
      results: null,
      responseOther: json['status'] != true ? json['message'].toString(): null,
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
