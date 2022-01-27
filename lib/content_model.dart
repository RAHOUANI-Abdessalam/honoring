class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Make an Order',
    image: 'assets/fill_in_details.svg',
    discription: "fill in all fields starting by the name to the story"
    " untill the photos of our dear deceased"
    " and make an order to get the Tombstone to your home"
  ),
  UnbordingContent(
    title: 'Fast Delevery',
    image: 'assets/order_delivered.svg',
    discription: "Wait untill you get the Tombstone of our"
    " dear deceased in it a QR code at the bottom allows you to access all his"
    " information, from his stories to pictures..."
  ),
  UnbordingContent(
    title: 'Scan the QR code',
    image: 'assets/camera_scan.svg',
    discription: "Put the Tombstone in the grave and every one can scan"
    " the QR code to Know more and all about our deceased and see"
    " his life storys and pictures"
  ),
];
