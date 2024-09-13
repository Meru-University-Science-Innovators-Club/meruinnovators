import 'dart:convert';

import 'package:isar/isar.dart';
part 'local_user.g.dart';

@collection
class LocalUser {
  LocalUser({
    required this.name,
    required this.username,
    required this.location,
    required this.skills,
    required this.frameworks,
    required this.socials,
    // required this.projects,
    required this.accesstoken,
    this.bio,
    List<Projects>? projects,
  }) : _projectsJson = jsonEncode(projects?.map((p) => p.toJson()).toList());
  Id id = Isar.autoIncrement;
  final String name;
  final String username;
  final String? location;
  final String? bio;
  final String accesstoken;
  final List<String> skills;
  final List<String> frameworks;
  final List<String> socials;
  final String? _projectsJson;
}

class Projects {
  const Projects(
    this.projectname,
    this.projectbanner,
    this.projectimages,
    this.projectDescription,
    this.sourcecode,
    this.site,
  );

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
      json['projectname'] as String,
      json['projectbanner'] as String,
      List<String>.from(json['projectimages'] as List<String>),
      json['projectDescription'] as String,
      json['sourcecode'] as String?,
      json['site'] as String?,
    );
  }

  final String projectname;
  final String projectbanner;
  final List<String> projectimages;
  final String projectDescription;
  final String? sourcecode;
  final String? site;

  Map<String, dynamic> toJson() {
    return {
      'projectname': projectname,
      'projectbanner': projectbanner,
      'projectimages': projectimages,
      'projectDescription': projectDescription,
      'sourcecode': sourcecode,
      'site': site,
    };
  }
}
