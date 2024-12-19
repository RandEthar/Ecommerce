class Clothes {
final String pathImage;
final String text;
final String text2;
final String newprice;
final String oldprice;
    final String  rival;
   final String  evaluation;

  Clothes({required this.pathImage, required this.text, required this.newprice, required this.oldprice, required this.rival, required this.evaluation,required this.text2});

}
List<Clothes> listClothes=[
Clothes(
  text2:"Neque porro quisquam est qui\n dolorem ipsum quia",
  pathImage:"assets/images/women_printed.png", 
text: "Women Printed Kurta",
 newprice: "₹1500",
  oldprice: "₹2499", 
  rival: "40", 
  evaluation: "56890")
,Clothes(
  text2:"Neque porro quisquam est qui\n dolorem ipsum quia",
  pathImage:"assets/images/HRX.png", 
text: "HRX by Hrithik Roshan",
 newprice: "₹2499",
  oldprice: "₹4999", 
  rival: "50", 
  evaluation: "344567")
,Clothes(
  text2:"Hair Straightening Brush With\n Keratin Infused Bristles (Black).",
  pathImage:"assets/images/Philips.png", 
text: "Philips BHH880/10",
 newprice: "₹999",
  oldprice: "₹1999", 
  rival: "50", 
  evaluation: "646776")
,Clothes(
  text2:"This Titan watch in Black color is\n Iwanted to buy for a long time",
  pathImage:"assets/images/watch.png", 
text: "TITAN Men Watch-1806N",
 newprice: "₹1500",
  oldprice: "₹3500", 
  rival: "60", 
  evaluation: "15007")



];