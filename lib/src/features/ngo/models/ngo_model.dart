class NGOModel {
  final String name;
  final String address;
  final String manager;
  final String managerPhone;
  final String deputyManager;
  final String deputyManagerPhone;
  final String image;

  const NGOModel({
    required this.name,
    required this.address,
    required this.manager,
    required this.managerPhone,
    required this.deputyManager,
    required this.deputyManagerPhone,
    required this.image,
  });

  static const mockData = [
    NGOModel(
      name: "Old Age Home Foundation",
      address: "123 Main Street",
      manager: "John Smith",
      managerPhone: "123-456-7890",
      deputyManager: "Jane Doe",
      deputyManagerPhone: "987-654-3210",
      image: "https://vakilsearch.com/blog/wp-content/uploads/2021/05/VS_Blog-Images_3-05.png",
    ),
    NGOModel(
      name: "Self Help NGO",
      address: "456 Elm Street",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      image: "https://img.freepik.com/premium-vector/ngo-nongovernmental-organization-serve-specific-social-template-hand-drawn-illustration_2175-7898.jpg?w=2000",
    ),
    NGOModel(
      name: "NGO Three",
      address: "789 Oak Avenue",
      manager: "Emily Brown",
      managerPhone: "111-222-3333",
      deputyManager: "David Wilson",
      deputyManagerPhone: "444-555-6666",
      image: "https://static.vecteezy.com/system/resources/previews/015/277/729/original/social-organization-logo-social-community-logo-template-illustration-eps-10-free-vector.jpg",
    ),
    NGOModel(
      name: "Save Tree Fondation",
      address: "321 Pine Road",
      manager: "Alexandra Lee",
      managerPhone: "777-888-9999",
      deputyManager: "Christopher Davis",
      deputyManagerPhone: "222-333-4444",
      image: "https://www.shutterstock.com/image-vector/ngo-earth-planet-hands-palm-260nw-1867730668.jpg",
    ),
    NGOModel(
      name: "Kids Are Future",
      address: "456 Elm Street",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQHdW6rpvi6weiED33ILgaz_OOo_pxL-GPtQ&usqp=CAU",
    ),
    NGOModel(
      name: "NAAM Foundation",
      address: "456 Elm Street",
      manager: "Mike Johnson",
      managerPhone: "555-555-5555",
      deputyManager: "Sarah Thompson",
      deputyManagerPhone: "999-999-9999",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzGUqSljUJsUnC_SEaXZ59OPH4EByobnEp-w&usqp=CAU",
    ),
    NGOModel(
      name: "NGO Three",
      address: "789 Oak Avenue",
      manager: "Emily Brown",
      managerPhone: "111-222-3333",
      deputyManager: "David Wilson",
      deputyManagerPhone: "444-555-6666",
      image: "https://static.vecteezy.com/system/resources/previews/015/277/729/original/social-organization-logo-social-community-logo-template-illustration-eps-10-free-vector.jpg",
    ),
    NGOModel(
      name: "NGO Four",
      address: "321 Pine Road",
      manager: "Alexandra Lee",
      managerPhone: "777-888-9999",
      deputyManager: "Christopher Davis",
      deputyManagerPhone: "222-333-4444",
      image: "https://www.shutterstock.com/image-vector/ngo-earth-planet-hands-palm-260nw-1867730668.jpg",
    ),
  ];
}
