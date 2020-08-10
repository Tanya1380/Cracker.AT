class User{
  final String name;
  final String year;
  final String roll_no;
  final String branch;
  final String phone;
  final String cgpa;

  User({this.name, this.year,
    this.roll_no, this.branch, this.cgpa, this.phone});

  Map<String, dynamic> toMap(){
    return {
      "name" : this.name,
      "branch" : this.branch,
      "year" : this.year,
      "roll_no" : this.roll_no,
      "phone" : this.phone,
      "cgpa" : this.cgpa
    };
  }
}