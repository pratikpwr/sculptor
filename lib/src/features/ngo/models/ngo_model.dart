import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'address_model.dart';

class NGOModel {
  final String id;

  final String name;
  final String description;

  final AddressModel address;
  final List<String> images;

  final String manager;
  final String managerPhone;
  final String deputyManager;
  final String deputyManagerPhone;

  const NGOModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.manager,
    required this.managerPhone,
    required this.deputyManager,
    required this.deputyManagerPhone,
    required this.images,
  });

  static const mockData = [
    NGOModel(
      id: "1",
      name: "Old Age Home Foundation",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl.",
      address: AddressModel(
        lane1: "123 Main Street",
        lane2: "Apt 1",
        latLng: LatLng(
          37.4171,
          -122.01571,
        ),
        city: "San Francisco",
        state: "California",
        pinCode: "94103",
      ),
      manager: "John Smith",
      managerPhone: "123-456-7890",
      deputyManager: "Jane Doe",
      deputyManagerPhone: "987-654-3210",
      images: [
        "https://images-platform.99static.com//NnfsZfhWECwMKeuj4yxeInkbKN8=/0x126:874x1000/fit-in/500x500/99designs-contests-attachments/35/35657/attachment_35657633",
      ],
    ),
    NGOModel(
      id: "2",
      name: "Self Help NGO",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl.",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      address: AddressModel(
        lane1: "456 Oak Street",
        lane2: "Apt 2",
        latLng: LatLng(
          37.4272,
          -122.02572,
        ),
        city: "San Francisco",
        state: "California",
        pinCode: "94103",
      ),
      images: [
        "https://images-platform.99static.com//NnfsZfhWECwMKeuj4yxeInkbKN8=/0x126:874x1000/fit-in/500x500/99designs-contests-attachments/35/35657/attachment_35657633",
      ],
    ),
    NGOModel(
      id: "3",
      name: "NGO Three",
      manager: "Emily Brown",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl.",
      managerPhone: "111-222-3333",
      deputyManager: "David Wilson",
      deputyManagerPhone: "444-555-6666",
      address: AddressModel(
        lane1: "789 Pine Avenue",
        lane2: "Apt 3",
        latLng: LatLng(
          37.4373,
          -122.03573,
        ),
        city: "San Francisco",
        state: "California",
        pinCode: "94103",
      ),
      images: [
        "https://images-platform.99static.com//NnfsZfhWECwMKeuj4yxeInkbKN8=/0x126:874x1000/fit-in/500x500/99designs-contests-attachments/35/35657/attachment_35657633",
      ],
    ),
    NGOModel(
      id: "4",
      name: "Kids Are Future",
      manager: "Mike Johnson",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl.",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      address: AddressModel(
        lane1: "456 Elm Street",
        lane2: "Apt 4",
        latLng: LatLng(
          37.5274,
          -122.18574,
        ),
        city: "San Francisco",
        state: "California",
        pinCode: "94103",
      ),
      images: [
        "https://images-platform.99static.com//NnfsZfhWECwMKeuj4yxeInkbKN8=/0x126:874x1000/fit-in/500x500/99designs-contests-attachments/35/35657/attachment_35657633",
      ],
    ),
    NGOModel(
      id: "5",
      name: "NAAM Foundation",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl.",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      images: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzGUqSljUJsUnC_SEaXZ59OPH4EByobnEp-w&usqp=CAU"
      ],
      address: AddressModel(
        lane1: "456 Elm Street",
        lane2: "Apt 4",
        latLng: LatLng(
          37.7275,
          -122.48575,
        ),
        city: "San Francisco",
        state: "California",
        pinCode: "94103",
      ),
    ),
    NGOModel(
      id: "6",
      name: "NGO Three",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, vitae aliquam nisl nisl nec nisl.",
      manager: "Emily Brown",
      managerPhone: "111-222-3333",
      deputyManager: "David Wilson",
      deputyManagerPhone: "444-555-6666",
      images: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzGUqSljUJsUnC_SEaXZ59OPH4EByobnEp-w&usqp=CAU'
      ],
      address: AddressModel(
        lane1: "789 Pine Avenue",
        lane2: "Apt 3",
        latLng: LatLng(
          38.42796,
          -123.08576,
        ),
        city: "San Francisco",
        state: "California",
        pinCode: "94103",
      ),
    ),
  ];
}
