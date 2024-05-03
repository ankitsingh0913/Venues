class PhotographyModel {
  PhotographyModel({
    required this.id,
    required this.image,
    required this.name,
    required this.subtitle,

  });

  String id;
  String image;
  String name;
  String subtitle;


}

final photosList = [
  PhotographyModel(
      id: '1',
      image: 'assets/images/AnniversaryPhoto.png',
      name: 'Delhi',
      subtitle: 'hi my name is ankit'
  ),
  PhotographyModel(
      id: '2',
      image: 'assets/images/BirthdayPhoto.png',
      name: 'America',
      subtitle: 'hi my name is ankit'
  ),
  PhotographyModel(
      id: '3',
      image: 'assets/images/weddingphoto.png',
      name: 'Las Angelos',
      subtitle: 'hi my name is ankit'
  ),
  PhotographyModel(
      id: '4',
      image: 'assets/images/AnniversaryPhoto.png',
      name: 'Dubai',
      subtitle: 'hi my name is ankit'
  ),


];
