final Map<String, dynamic> orderData = {
  'id': 1,
  'order_time': '2024-10-15T10:30:00Z',
  'expected_hour': 2,
  'connector_type': {
    'id': 2,
    'title': 'CCS Combo 2',
  },
  'comment': 'Please ensure the station is available.',
  'creator': {
    'id': 1,
    'full_name': 'John Doe',
    'phone_number': '+1234567890',
    'email': 'johndoe@example.com',
  },
  'status':
      'Pending', // Example status, can be 'Pending', 'Completed', 'Cancelled', etc.
  'station': {
    'id': 1,
    'latitude': 40.7128,
    'longitude': -74.0060,
    'start_time': '08:00',
    'end_time': '20:00',
    'connector_type': {
      'id': 2,
      'title': 'CCS Combo 2',
    },
    'hourly_rate': 10,
    'kwt': 50,
    'phone_number': '+1987654321',
    'name': 'Central Charging Station',
    'image': [
      'https://example.com/station1.jpg',
      'https://example.com/station2.jpg',
    ],
    'address': '123 Main St, New York, NY',
    'reviews': [],
    'average_rate': 4.5,
    'user': {
      'id': 2,
      'full_name': 'Jane Smith',
      'phone_number': '+9876543210',
      'email': 'janesmith@example.com',
    },
  },
  'reason': 'Connector unavailable',
};

final List<Map<String, dynamic>> ordersData = [
  {
    'id': 1,
    'order_time': '2024-10-15T10:30:00Z',
    'expected_hour': 2,
    'connector_type': {
      'id': 2,
      'title': 'CCS Combo 2',
    },
    'comment': 'Please ensure the station is available.',
    'creator': {
      'id': 1,
      'full_name': 'John Doe',
      'phone_number': '+1234567890',
      'email': 'johndoe@example.com',
    },
    'status': 'Pending', // Example status
    'station': {
      'id': 1,
      'latitude': 40.7128,
      'longitude': -74.0060,
      'start_time': '08:00',
      'end_time': '20:00',
      'connector_type': {
        'id': 2,
        'title': 'CCS Combo 2',
      },
      'hourly_rate': 10,
      'kwt': 50,
      'phone_number': '+1987654321',
      'name': 'Central Charging Station',
      'image': [
        'https://example.com/station1.jpg',
        'https://example.com/station2.jpg',
      ],
      'address': '123 Main St, New York, NY',
      'reviews': [],
      'average_rate': 4.5,
      'user': {
        'id': 2,
        'full_name': 'Jane Smith',
        'phone_number': '+9876543210',
        'email': 'janesmith@example.com',
      },
    },
    'reason': 'Connector unavailable',
  },
  {
    'id': 2,
    'order_time': '2024-10-15T11:00:00Z',
    'expected_hour': 1,
    'connector_type': {
      'id': 1,
      'title': 'Type 1',
    },
    'comment': 'Looking forward to using the charger.',
    'creator': {
      'id': 3,
      'full_name': 'Alice Johnson',
      'phone_number': '+1122334455',
      'email': 'alice.johnson@example.com',
    },
    'status': 'Completed', // Example status
    'station': {
      'id': 2,
      'latitude': 34.0522,
      'longitude': -118.2437,
      'start_time': '07:00',
      'end_time': '22:00',
      'connector_type': {
        'id': 1,
        'title': 'Type 1',
      },
      'hourly_rate': 15,
      'kwt': 60,
      'phone_number': '+1098765432',
      'name': 'Downtown Charging Station',
      'image': [
        'https://example.com/station3.jpg',
        'https://example.com/station4.jpg',
      ],
      'address': '456 Elm St, Los Angeles, CA',
      'reviews': [],
      'average_rate': 4.0,
      'user': {
        'id': 4,
        'full_name': 'Bob Brown',
        'phone_number': '+2233445566',
        'email': 'bob.brown@example.com',
      },
    },
    'reason': 'Station occupied',
  },
];