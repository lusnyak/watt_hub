final Map<String, dynamic> createdCarData = {
  'id': 1,
  'car_type': {
    'id': 1,
    'title': 'SUV',
  },
  'car_model': {
    'id': 1,
    'title': 'Tesla Model X',
  },
  'connector_type': {
    'id': 2,
    'title': 'CCS Combo 2',
  },
  'images': [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
  ],
  'user': {
    'id': 1,
    'full_name': 'John Doe',
    'phone_number': '+1234567890',
    'email': 'johndoe@example.com',
  },
};

final List<Map<String, dynamic>> createdCarsData = [
  {
    'id': 1,
    'car_type': {'id': 1, 'title': 'SUV'},
    'car_model': {'id': 1, 'title': 'Tesla Model X'},
    'connector_type': {'id': 2, 'title': 'CCS Combo 2'},
    'images': [
      'https://example.com/image1.jpg',
      'https://example.com/image2.jpg',
    ],
    'user': {
      'id': 1,
      'full_name': 'John Doe',
      'phone_number': '+1234567890',
      'email': 'johndoe@example.com',
    },
  },
  {
    'id': 2,
    'car_type': {'id': 2, 'title': 'Sedan'},
    'car_model': {'id': 2, 'title': 'BMW i8'},
    'connector_type': {'id': 3, 'title': 'Type 2'},
    'images': [
      'https://example.com/image3.jpg',
      'https://example.com/image4.jpg',
    ],
    'user': {
      'id': 2,
      'full_name': 'Jane Smith',
      'phone_number': '+9876543210',
      'email': 'janesmith@example.com',
    },
  },
];
