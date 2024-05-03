class VenuesModel {
  VenuesModel({
    required this.id,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.views,
    required this.rating
  });

  String id;
  String image;
  String name;
  String subtitle;
  String views;
  String rating;
}

final venuesList = [
  VenuesModel(
    id: '1',
    image: 'assets/images/flower.png',
    name: 'Delhi',
    subtitle: 'hi my name is ankit',
    views: '6524',
    rating: '4.5',
    ),
  VenuesModel(
    id: '2',
    image: 'assets/images/Photographer.png',
    name: 'America',
    subtitle: 'hi my name is ankit',
    views: "6524",
    rating: '4.5',
    ),
  VenuesModel(
    id: '3',
    image: 'assets/images/Invitation.png',
    name: 'Las Angelos',
    subtitle: 'hi my name is ankit',
    views: '6524',
    rating: '4.5',
    ),
  VenuesModel(
    id: '4',
    image: 'assets/images/flower.png',
    name: 'Dubai',
    subtitle: 'hi my name is ankit',
    views: '6524',
    rating: '4.5',
    ),

  VenuesModel(
      id: '5',
      image: 'assets/images/flower.png',
      name: 'Rajasthan',
      subtitle: 'hi my name is ankit',
      views: '6524',
      rating: '4.5',
  ),

  VenuesModel(
      views: '6524',
      rating: '4.5',
      id: '6',
      image: 'assets/images/flower.png',
      name: 'London',
      subtitle: 'hi my name is ankit'
  ),

  VenuesModel(
      views: '6524',
      rating: '4.5',
      id: '7',
      image: 'assets/images/flower.png',
      name: 'United Kingdom',
      subtitle: 'hi my name is ankit'
  ),

  VenuesModel(
      views: '6524',
      rating: '4.5',
      id: '8',
      image: 'assets/images/AnniversaryPhoto.png',
      name: 'Paris',
      subtitle: 'hi my name is ankit'
  ),
];
