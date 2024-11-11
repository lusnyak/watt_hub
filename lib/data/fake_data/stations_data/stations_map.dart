Map<String, dynamic> stationData = {
  "id": 1,
  "latitude": 40.1792,
  "longitude": 44.4991,
  "start_time": "2023-10-01 08:00:00",
  "end_time": "2023-10-01 20:00:00",
  "connector_type": {
    "id": 1,
    "title": "Type 2",
  },
  "hourly_rate": 5,
  "kwt": 20,
  "phone_number": "+37412345678",
  "name": "Charging Station Yerevan 1",
  "image": [
    "https://example.com/yerevan1.jpg",
    "https://example.com/yerevan2.jpg",
  ],
  "address": "1 Abovyan St, Yerevan",
  "reviews": [
    {
      "id": 3,
      "rate": 4,
      "message": "Good station, reasonable pricing.",
      "user": {
        "id": 3,
        "full_name": "Hayk Minasyan",
        "phone_number": "+37498765433",
        "email": "hayk.minasyan@example.com",
      },
      "station": null,
    }
  ],
  "average_rate": 4.5,
  "user": {
    "id": 1,
    "full_name": "Arman Grigoryan",
    "phone_number": "+37498765432",
    "email": "arman.grigoryan@example.com",
  },
};

List<Map<String, dynamic>> stationsData = [
  {
    "id": 1,
    "latitude": 40.1792,
    "longitude": 44.4991,
    "start_time": "2023-10-01T08:00:00",
    "end_time": "2023-10-01T20:00:00",
    "connector_type": [
      {"id": 1, "title": "Type 2"}
    ],
    "hourly_rate": 5,
    "kwt": 20,
    "phone_number": "+37412345678",
    "name": "Charging Station Yerevan 1",
    "image": [
      "https://example.com/yerevan1.jpg",
      "https://example.com/yerevan2.jpg"
    ],
    "address": "1 Abovyan St, Yerevan",
    "reviews": [
      {
        "id": 1,
        "rate": 5,
        "message": "Excellent service and location!",
        "user": {
          "id": 1,
          "full_name": "Arman Grigoryan",
          "phone_number": "+37498765432",
          "email": "arman.grigoryan@example.com"
        },
        "station": null
      },
      {
        "id": 2,
        "rate": 4,
        "message": "Good charging speed, but needs more stations like this.",
        "user": {
          "id": 2,
          "full_name": "Narine Sargsyan",
          "phone_number": "+37498765433",
          "email": "narine.sargsyan@example.com"
        },
        "station": null
      }
    ],
    "average_rate": 4.5,
    "user": {
      "id": 1,
      "full_name": "Arman Grigoryan",
      "phone_number": "+37498765432",
      "email": "arman.grigoryan@example.com"
    }
  },
  {
    "id": 2,
    "latitude": 40.1892,
    "longitude": 44.5115,
    "start_time": "2023-10-01T07:00:00",
    "end_time": "2023-10-01T22:00:00",
    "connector_type": [
      {"id": 2, "title": "CHAdeMO"}
    ],
    "hourly_rate": 4,
    "kwt": 15,
    "phone_number": "+37412345679",
    "name": "Charging Station Yerevan 2",
    "image": [
      "https://example.com/yerevan3.jpg",
      "https://example.com/yerevan4.jpg"
    ],
    "address": "2 Mashtots Ave, Yerevan",
    "reviews": [
      {
        "id": 3,
        "rate": 4,
        "message": "Very convenient but needs a bit more space for cars.",
        "user": {
          "id": 3,
          "full_name": "Lilit Petrosyan",
          "phone_number": "+37498765434",
          "email": "lilit.petrosyan@example.com"
        },
        "station": null
      },
      {
        "id": 4,
        "rate": 5,
        "message": "Fast charging and friendly staff.",
        "user": {
          "id": 4,
          "full_name": "Vardan Hovhannisyan",
          "phone_number": "+37498765435",
          "email": "vardan.hovhannisyan@example.com"
        },
        "station": null
      }
    ],
    "average_rate": 4.0,
    "user": {
      "id": 2,
      "full_name": "Lilit Petrosyan",
      "phone_number": "+37498765431",
      "email": "lilit.petrosyan@example.com"
    }
  },
  {
    "id": 3,
    "latitude": 40.5805,
    "longitude": 44.5130,
    "start_time": "2023-10-01T09:00:00",
    "end_time": "2023-10-01T19:00:00",
    "connector_type": [
      {"id": 3, "title": "Type 1"}
    ],
    "hourly_rate": 3,
    "kwt": 10,
    "phone_number": "+37412345680",
    "name": "Charging Station Ejmiatsin",
    "image": [
      "https://example.com/ejmiatsin1.jpg",
      "https://example.com/ejmiatsin2.jpg"
    ],
    "address": "3 Mkhitar Gosh St, Ejmiatsin",
    "reviews": [
      {
        "id": 5,
        "rate": 3,
        "message": "It works well but the location is a bit out of the way.",
        "user": {
          "id": 5,
          "full_name": "Hayk Karapetyan",
          "phone_number": "+37498765436",
          "email": "hayk.karapetyan@example.com"
        },
        "station": null
      },
      {
        "id": 6,
        "rate": 4,
        "message": "Nice place, but charging could be faster.",
        "user": {
          "id": 6,
          "full_name": "Sergey Vardanyan",
          "phone_number": "+37498765437",
          "email": "sergey.vardanyan@example.com"
        },
        "station": null
      }
    ],
    "average_rate": 4.2,
    "user": {
      "id": 3,
      "full_name": "Vardan Hovhannisyan",
      "phone_number": "+37498765430",
      "email": "vardan.hovhannisyan@example.com"
    }
  },
  {
    "id": 4,
    "latitude": 40.3488,
    "longitude": 40.2076,
    "start_time": "2023-10-01T06:00:00",
    "end_time": "2023-10-01T20:00:00",
    "connector_type": [
      {"id": 1, "title": "Type 2"}
    ],
    "hourly_rate": 5,
    "kwt": 25,
    "phone_number": "+37412345681",
    "name": "Charging Station Gyumri 1",
    "image": [
      "https://example.com/gyumri1.jpg",
      "https://example.com/gyumri2.jpg"
    ],
    "address": "4 Sayat Nova St, Gyumri",
    "reviews": [
      {
        "id": 7,
        "rate": 5,
        "message": "One of the best stations I have visited!",
        "user": {
          "id": 7,
          "full_name": "Tigran Petrosyan",
          "phone_number": "+37498765438",
          "email": "tigran.petrosyan@example.com"
        },
        "station": null
      },
      {
        "id": 8,
        "rate": 4,
        "message": "Great service but I wish there were more slots.",
        "user": {
          "id": 8,
          "full_name": "Ani Hakobyan",
          "phone_number": "+37498765439",
          "email": "ani.hakobyan@example.com"
        },
        "station": null
      }
    ],
    "average_rate": 4.8,
    "user": {
      "id": 4,
      "full_name": "Narine Sargsyan",
      "phone_number": "+37498765429",
      "email": "narine.sargsyan@example.com"
    }
  },
  {
    "id": 5,
    "latitude": 40.5649,
    "longitude": 44.3448,
    "start_time": "2023-10-01T10:00:00",
    "end_time": "2023-10-01T21:00:00",
    "connector_type": [
      {"id": 2, "title": "CHAdeMO"}
    ],
    "hourly_rate": 4,
    "kwt": 18,
    "phone_number": "+37412345682",
    "name": "Charging Station Vanadzor",
    "image": [
      "https://example.com/vanadzor1.jpg",
      "https://example.com/vanadzor2.jpg"
    ],
    "address": "5 Tigran Mets Ave, Vanadzor",
    "reviews": [
      {
        "id": 9,
        "rate": 4,
        "message": "Nice station, helpful staff, but charging could be faster.",
        "user": {
          "id": 9,
          "full_name": "Georgi Gasparyan",
          "phone_number": "+37498765440",
          "email": "georgi.gasparyan@example.com"
        },
        "station": null
      }
    ],
    "average_rate": 4.3,
    "user": {
      "id": 5,
      "full_name": "Sergey Vardanyan",
      "phone_number": "+37498765428",
      "email": "sergey.vardanyan@example.com"
    }
  },
  {
    "id": 6,
    "latitude": 40.2060,
    "longitude": 44.5093,
    "start_time": "2023-10-01T08:30:00",
    "end_time": "2023-10-01T22:30:00",
    "connector_type": [
      {"id": 3, "title": "Type 1"}
    ],
    "hourly_rate": 6,
    "kwt": 30,
    "phone_number": "+37412345683",
    "name": "Charging Station Artashat",
    "image": [
      "https://example.com/artashat1.jpg",
      "https://example.com/artashat2.jpg"
    ],
    "address": "6 Abovyan St, Artashat",
    "reviews": [
      {
        "id": 10,
        "rate": 5,
        "message":
            "Very convenient location, quick charging, and excellent customer service.",
        "user": {
          "id": 10,
          "full_name": "Sona Kharatyan",
          "phone_number": "+37498765441",
          "email": "sona.kharatyan@example.com"
        },
        "station": null
      }
    ],
    "average_rate": 4.7,
    "user": {
      "id": 6,
      "full_name": "Hayk Karapetyan",
      "phone_number": "+37498765427",
      "email": "hayk.karapetyan@example.com"
    }
  },
];
