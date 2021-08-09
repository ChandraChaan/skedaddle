class FrontEventsModal {
  var error;
  String responseOther;
  var results;

  FrontEventsModal({this.results, this.error, this.responseOther});

  static FrontEventsModal fromJson(json) => FrontEventsModal(
      results: json['status'] == 'success' ? json : null,
      responseOther: (json['status'] == 'success') ? json['status'].toString() : null,
      error: json);

  static FrontEventsModal withError(error) =>
      FrontEventsModal(results: null, responseOther: null, error: error);

  static FrontEventsModal fromJsonError(json) => FrontEventsModal(
      results: null,
      responseOther: json['status'] == 'success' ? json['status'].toString(): null,
      error: json['status']);
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
