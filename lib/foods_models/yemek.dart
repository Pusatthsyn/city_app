class Food {
  String name;
  String image;
  String icindekiler;
  String tarif;

  Food({
    required this.name,
    required this.image,
    required this.icindekiler,
    required this.tarif,
  });
}

final List<Food> foods = [
  Food(
      name: "Eli Böğründe",
      image: "assets/food_images/7.png",
      icindekiler:
          "600 gram kuzu kuşbaşı\n4-5 adet domates\n7-8 adet biber\n3 adet patates\n4-5 diş sarımsak\n3-4 adet küçük boy soğan ya da arpacık soğan\nTuz\nPul biber\nKarabiber\nKekik\n4 yemek kaşığı zeytinyağı\nTereyağı \n\nSosu İçin;\n1 tatlı kaşığı biber salçası\n1 tatlı kaşığı domates salçası\n1 su bardağı sıcak su\n2 yemek kaşığı zeytinyağı",
      tarif:
          "1. İlk önce et; zeytinyağı, tuz ve baharatlarla karıştırılıp, 1-2 saat dinlendirilir. Bu işlem, etin daha yumuşak olmasınısağlıyor.\n2. Geçelim en kolay kısma, patateslerin kabukları soyulur ve küp küp doğranır. Domates ve biberler debüyüklüğüne göre dilimlenir.\n3. Soğan ve sarımsağın kabukları soyulur. Tüm malzemeler tepsiye sıra sıra dizilir.\n4. Etin üzerine, çay kaşığıyla ara ara tereyağı konulur.\n5. Patateslerin üzerine tuz ve dilediğiniz baharat atılır.\n6. Sos için; zeytinyağı ve salça, bir kapta suyla açılır ve bütün malzemelerin üzerine gezdirilir. Evet yemeğimiz fırınagirmeye hazır.\n7. Üzerini bir kapak ya da yağlı kağıtla kapatıp, 200 derece fırında etler yumuşacık oluncaya kadar pişirilir. 👌😊\n8. Pişerken etleri arada bir karıştırabilirsiniz. Genelde 1,5 saate yakın bir sürede pişiyor.\n9. Orijinalinde bu şekilde tamamen fırında pişiyor etler ama süre çok uzun derseniz, etleri önceden çok az haşlayıpyapabilirsiniz. Fırından fırına pişme süresi farklılık gösterebilir."),
  Food(
      name: "Kelle Paça",
      image: "assets/food_images/2.png",
      icindekiler: 
          "1 kilo yada daha fazla kemikli et\n( eti bir çorba kase dolusu olmalı)\n1 yemek kaşığı kadar salça\n1 yemek kaşığı zeytinyağı\n1 çay kaşığı pul biber\n1 yemek kaşığı sumak ekşisi(sıvı halde) \nyoksa bir limon suyu damak tadınıza göre değiştirebilirsiniz\nTuz\n6-7 diş sarımsak",
      tarif:
          "1. Kemikli et düdüklüde 45 dk kadar haşlanır.\n2.  Haşlandıktan sonra ayıklanır. Diğer tarafta tencereye yağ salça ve biber ilave edip karıştırılır haşladığımız etlerin suyu süzülerek salçalı karışıma ilave edilir.\n3. 10 dk kadar kaynatılır ve etler ilave edilir. 10 dk kadar tekrar kaynatılır indirmeden önce sumak ekşi ve sarımsak da ilave edilir iki taşım sonra kapatılır. Afiyet şifa olsun."),
  Food(
      name: "Tarhana Firiği",
      image: "assets/food_images/5.png",
      icindekiler:
           "1 kilogram aşurelik buğday\n1,5 kilogram süzme yoğurt\n1 çay bardağı un\n5 yemek kaşığı kekik\n2 yemek kaşığı tuz",
      tarif:
          "1. Aşurelik buğdayları büyükçe bir tencerenin içerisine alın. Üzerine 2 litre kadar su ekleyin.\n2. Yaklaşık 4 saat kadar kaynatın. Bu sırada suyu eksildikçe ilave edin.\n3. Pişen buğdayları bir köşeye alın. Bu sırada yoğurtlu harcı hazırlayın.\n4. Yoğurdun içerisine kekik,un ve tuzu ilave ederek iyice karıştırın\n5. Soğuyan buğdayların içerisine yoğurtlu harcı ilave edin ve iyice karıştırın.\n6. Güneş gören bir yere kurutma apartınızı serin ve üzerine çok ince bir tabaka halinde tarhana harcınızı yayın.\n7. Yaklaşık iki gün tarhanalar kuruyup, çıtırlaşana kadar güneşin altında bekletin. 👌😊\n8. Kuruduklarında bir kavanozun içerisinde ya da bez bir torbanın içerisinde muhafaza edin. İster cips gibi yiyin, ister çorbasını yapın. Afiyet olsun."),
  Food(
      name: "İçli Köfte",
      image: "assets/food_images/6.png",
      icindekiler:
          "1- 2yemek kaşığı zeytinyağı\n2-2yemek kaşığı tereyağı\n3-3 adet orta boy domates\n4- 4 adet orta boy sivri biber\n5- 3 adet yumurta\n6- 1 çay kaşığı tuz\n7- 1/2çay kaşığı karabiber\n8- 1/2çay kaşığı pul biber",
      tarif: ""),
  Food(
      name: "Tirşik",
      image: "assets/food_images/8.png",
      icindekiler:
          "1- 2yemek kaşığı zeytinyağı\n2-2yemek kaşığı tereyağı\n3-3 adet orta boy domates\n4- 4 adet orta boy sivri biber\n5- 3 adet yumurta\n6- 1 çay kaşığı tuz\n7- 1/2çay kaşığı karabiber\n8- 1/2çay kaşığı pul biber",
      tarif: ""),
  Food(
      name: "Kuru Dolma",
      image: "assets/food_images/1.png",
      icindekiler:
          "1- 2yemek kaşığı zeytinyağı\n2-2yemek kaşığı tereyağı\n3-3 adet orta boy domates\n4- 4 adet orta boy sivri biber\n5- 3 adet yumurta\n6- 1 çay kaşığı tuz\n7- 1/2çay kaşığı karabiber\n8- 1/2çay kaşığı pul biber",
      tarif: ""),
  Food(
      name: "Yeşil Pide",
      image: "assets/food_images/4.png",
      icindekiler:
          "1-> 2 yemek kaşığı zeytinyağı\n2-> 2 yemek kaşığı tereyağı\n3-> 3 adet orta boy domates\n4-> 4 adet orta boy sivri biber\n5-> 3 adet yumurta\n6-> 1 çay kaşığı tuz\n7-> 1/2 çay kaşığı karabiber\n8-> 1/2 çay kaşığı pul biber",
      tarif:
          "1-> Geniş bir sahanda 2 yemek kaşığı zeytinyağı ve 2 yemek kaşığı tereyağını kızdırın.\n2-> Üzerine 3 adet doğranmış yeşil biberi katın ve kavurun.\n3-> Kavrulan biberlerin üzerine 3 adet rendelenmiş domatesi ilave edin.\n4-> 1 çay kaşığı tuzu ve yarımşar çay kaşığı karabiber ve pul biberi katıp suyu azalana kadar pişirin.\n5-> Domates suyunu biraz çektikten sonra 3 adet yumurtanın beyazını menemen harcının içerisine ekleyin ve sürekli olarak karıştırın.\n6-> Yumurtanın beyazları piştikten sonra sarısını da üzerine ilave edine ve 1 dakika karıştırdıktan sonra ocaktan alın.\n7-> Doğranmış maydanoz serpiştirip servis edin. Afiyetler olsun!"),

  Food(
      name: "Acem Pilavı",
      image: "assets/food_images/9.png",
      icindekiler:
          "1-> 2 yemek kaşığı zeytinyağı\n2-> 2 yemek kaşığı tereyağı\n3-> 3 adet orta boy domates\n4-> 4 adet orta boy sivri biber\n5-> 3 adet yumurta\n6-> 1 çay kaşığı tuz\n7-> 1/2 çay kaşığı karabiber\n8-> 1/2 çay kaşığı pul biber",
      tarif:
          "1-> Geniş bir sahanda 2 yemek kaşığı zeytinyağı ve 2 yemek kaşığı tereyağını kızdırın.\n2-> Üzerine 3 adet doğranmış yeşil biberi katın ve kavurun.\n3-> Kavrulan biberlerin üzerine 3 adet rendelenmiş domatesi ilave edin.\n4-> 1 çay kaşığı tuzu ve yarımşar çay kaşığı karabiber ve pul biberi katıp suyu azalana kadar pişirin.\n5-> Domates suyunu biraz çektikten sonra 3 adet yumurtanın beyazını menemen harcının içerisine ekleyin ve sürekli olarak karıştırın.\n6-> Yumurtanın beyazları piştikten sonra sarısını da üzerine ilave edine ve 1 dakika karıştırdıktan sonra ocaktan alın.\n7-> Doğranmış maydanoz serpiştirip servis edin. Afiyetler olsun!"),

  Food(
      name: "Tereyağlı Çörek",
      image: "assets/food_images/10.png",
      icindekiler:
          "1-> 2 yemek kaşığı zeytinyağı\n2-> 2 yemek kaşığı tereyağı\n3-> 3 adet orta boy domates\n4-> 4 adet orta boy sivri biber\n5-> 3 adet yumurta\n6-> 1 çay kaşığı tuz\n7-> 1/2 çay kaşığı karabiber\n8-> 1/2 çay kaşığı pul biber",
      tarif:
          "1-> Geniş bir sahanda 2 yemek kaşığı zeytinyağı ve 2 yemek kaşığı tereyağını kızdırın.\n2-> Üzerine 3 adet doğranmış yeşil biberi katın ve kavurun.\n3-> Kavrulan biberlerin üzerine 3 adet rendelenmiş domatesi ilave edin.\n4-> 1 çay kaşığı tuzu ve yarımşar çay kaşığı karabiber ve pul biberi katıp suyu azalana kadar pişirin.\n5-> Domates suyunu biraz çektikten sonra 3 adet yumurtanın beyazını menemen harcının içerisine ekleyin ve sürekli olarak karıştırın.\n6-> Yumurtanın beyazları piştikten sonra sarısını da üzerine ilave edine ve 1 dakika karıştırdıktan sonra ocaktan alın.\n7-> Doğranmış maydanoz serpiştirip servis edin. Afiyetler olsun!"),
];
