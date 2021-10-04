class EventDatas {
  final String title, prize, desc;
  bool isbutton;
  final List<String> imgurl;

  EventDatas(this.title, this.prize, this.desc, this.imgurl, this.isbutton
      //this.cardcolor
      );
}

List<EventDatas> eventitems = [
  EventDatas(
      "Design & Build Finance App",
      "Total Price ₹28,600.870",
      "Solving the problems that appear in the new era of technology world.we need come with the mobile ...",
      imagesfirstcard,
      false),
  EventDatas(
      "Charity Website",
      "Non-Profit",
      "Helping elders to what their needs from people in the world.",
      imagessecondcard,
      true),
];

List<String> imagesfirstcard = [
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"
];

List<String> imagessecondcard = [
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
];
