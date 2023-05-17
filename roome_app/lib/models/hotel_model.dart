class HotelModel {
  int? id;
  String? imageStr;
  String? name;
  String? address;
  double? price;
  int? reviewers;
  String? Distance;

  HotelModel({
    this.id,
    this.imageStr,
    this.name,
    this.address,
    this.price,
    this.reviewers,
    this.Distance,
  });
  
}
//const allHotels =[];
List<HotelModel> hotels =[
  HotelModel(
    id: 1,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/get_started.png',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 2,
    name: 'Queen Hotel',
    imageStr: 'assets/images/logo_face.png',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 3,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks1.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 4,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks2.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 5,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks3.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 6,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks4.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 7,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks5.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 8,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks6.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),
  HotelModel(
    id: 9,
    name: 'Grand Royal Hotel',
    imageStr: 'assets/images/ks7.jpg',
    address: 'London',
    price: 220,
    reviewers: 80,
    Distance: '3',
  ),

];
