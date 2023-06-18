class VolunteerModel {
  final String fullName;
  final String photoUrl;
  final String mobileNo;
  final String address;
  final String gender;
  final DateTime dob;
  final String bloodGroup;
  final String? email;

  const VolunteerModel({
    required this.fullName,
    required this.photoUrl,
    required this.mobileNo,
    required this.address,
    required this.gender,
    required this.dob,
    required this.bloodGroup,
    required this.email,
  });

  // volunteer mock data
  static final volunteers = [
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
    VolunteerModel(
      fullName: 'Jayesh Patil',
      photoUrl: 'https://media.licdn.com/dms/image/C5103AQHveG1WjkXnqg/profile-displayphoto-shrink_800_800/0/1583002290133?e=2147483647&v=beta&t=dEhVy5PnJHfYVFsmOdYbO4MRmwKuPonaVSzPG4WUDJY',
      mobileNo: '9876543210',
      address: 'More Vihar, Vimukt Colony, Nashik',
      bloodGroup: 'B+',
      dob: DateTime(2000, 12, 1),
      email: 'jayeshpatil@gmail.com',
      gender: 'Male',
    ),
  ];
}
