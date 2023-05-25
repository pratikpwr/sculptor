class NGOModel {
  final String name;
  final String address;
  final String manager;
  final String managerPhone;
  final String deputyManager;
  final String deputyManagerPhone;
  final List<String> images;

  const NGOModel({
    required this.name,
    required this.address,
    required this.manager,
    required this.managerPhone,
    required this.deputyManager,
    required this.deputyManagerPhone,
    required this.images,
  });

  static const mockData = [
    NGOModel(
      name: "NGO One",
      address: "123 Main Street",
      manager: "John Smith",
      managerPhone: "123-456-7890",
      deputyManager: "Jane Doe",
      deputyManagerPhone: "987-654-3210",
      images: ["image1.jpg", "image2.jpg", "image3.jpg"],
    ),
    NGOModel(
      name: "NGO Two",
      address: "456 Elm Street",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      images: ["image4.jpg", "image5.jpg"],
    ),
    NGOModel(
      name: "NGO Three",
      address: "789 Oak Avenue",
      manager: "Emily Brown",
      managerPhone: "111-222-3333",
      deputyManager: "David Wilson",
      deputyManagerPhone: "444-555-6666",
      images: ["image6.jpg", "image7.jpg", "image8.jpg"],
    ),
    NGOModel(
      name: "NGO Four",
      address: "321 Pine Road",
      manager: "Alexandra Lee",
      managerPhone: "777-888-9999",
      deputyManager: "Christopher Davis",
      deputyManagerPhone: "222-333-4444",
      images: ["image9.jpg", "image10.jpg", "image11.jpg"],
    ),
    NGOModel(
      name: "NGO Two",
      address: "456 Elm Street",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      images: ["image4.jpg", "image5.jpg"],
    ),
    NGOModel(
      name: "NGO Two",
      address: "456 Elm Street",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      images: ["image4.jpg", "image5.jpg"],
    ),
  ];
}
