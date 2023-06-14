class EventModel {
  final String title;
  final String eventType;
  final String organizer;

  final DateTime startDate;
  final DateTime endDate;

  final String address;

  final String description;
  final String image;
  final String? eligibility;

  const EventModel({
    required this.title,
    required this.eventType,
    required this.organizer,
    required this.startDate,
    required this.endDate,
    required this.address,
    required this.description,
    required this.image,
    this.eligibility,
  });

  //events mock data
  static final events = [
    EventModel(
      title: 'Blood Donation Camp',
      eventType: 'Blood Donation',
      organizer: 'Red Cross Society',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      image: 'https://picsum.photos/200/300',
      eligibility: '18+',
    ),
    EventModel(
      title: 'Green Forestation',
      eventType: 'Planting',
      organizer: 'Green Peace',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      image: 'https://picsum.photos/200/300',
      eligibility: '12+',
    ),
    EventModel(
      title: 'Blood Donation Camp',
      eventType: 'Blood Donation',
      organizer: 'Red Cross Society',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      image: 'https://picsum.photos/200/300',
      eligibility: '18+',
    ),
    EventModel(
      title: 'Green Forestation',
      eventType: 'Planting',
      organizer: 'Green Peace',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      image: 'https://picsum.photos/200/300',
      eligibility: '12+',
    ),
    EventModel(
      title: 'Blood Donation Camp',
      eventType: 'Blood Donation',
      organizer: 'Red Cross Society',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      image: 'https://picsum.photos/200/300',
      eligibility: '18+',
    ),
    EventModel(
      title: 'Green Forestation',
      eventType: 'Planting',
      organizer: 'Green Peace',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      image: 'https://picsum.photos/200/300',
      eligibility: '12+',
    ),
  ];
}
