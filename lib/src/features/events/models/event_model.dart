class EventModel {
  final String id;
  final String title;
  final String eventType;
  final String organizer;

  final DateTime startDate;
  final DateTime endDate;

  final String address;

  final String description;

  final List<String> images;

  final String? eligibility;

  const EventModel({
    required this.id,
    required this.title,
    required this.eventType,
    required this.organizer,
    required this.startDate,
    required this.endDate,
    required this.address,
    required this.description,
    required this.images,
    this.eligibility,
  });

  //events mock data
  static final events = [
    EventModel(
      id: '1wvesd',
      title: 'Blood Donation Camp',
      eventType: 'Blood Donation',
      organizer: 'Red Cross Society',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      images: [
        'https://picsum.photos/300/500',
        'https://picsum.photos/200/300',
        'https://picsum.photos/400/600',
      ],
      eligibility: '18+',
    ),
    EventModel(
      id: '1vwegw',
      title: 'Green Forestation',
      eventType: 'Planting',
      organizer: 'Green Peace',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      images: [
        'https://picsum.photos/300/500',
        'https://picsum.photos/200/300',
        'https://picsum.photos/400/600',
      ],
      eligibility: '12+',
    ),
    EventModel(
      id: '1wevwe',
      title: 'Blood Donation Camp',
      eventType: 'Blood Donation',
      organizer: 'Red Cross Society',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      images: [
        'https://picsum.photos/300/500',
        'https://picsum.photos/200/300',
        'https://picsum.photos/400/600',
      ],
      eligibility: '18+',
    ),
    EventModel(
      id: '1vsvew',
      title: 'Green Forestation',
      eventType: 'Planting',
      organizer: 'Green Peace',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      images: [
        'https://picsum.photos/300/500',
        'https://picsum.photos/200/300',
        'https://picsum.photos/400/600',
      ],
      eligibility: '12+',
    ),
    EventModel(
      id: '1sddss',
      title: 'Blood Donation Camp',
      eventType: 'Blood Donation',
      organizer: 'Red Cross Society',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      images: [
        'https://picsum.photos/300/500',
        'https://picsum.photos/200/300',
        'https://picsum.photos/400/600',
      ],
      eligibility: '18+',
    ),
    EventModel(
      id: '123r2',
      title: 'Green Forestation',
      eventType: 'Planting',
      organizer: 'Green Peace',
      startDate: DateTime(2023, 8, 10, 10),
      endDate: DateTime(2023, 8, 11, 18),
      address: 'Sun Enclave, JB road, Noida, UP',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
      images: [
        'https://picsum.photos/300/500',
        'https://picsum.photos/200/300',
        'https://picsum.photos/400/600',
      ],
      eligibility: '12+',
    ),
  ];
}
