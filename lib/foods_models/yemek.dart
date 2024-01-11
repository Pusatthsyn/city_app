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
          "iç harcı için:\n1 kg kıyma\n1 kg kuru soğan\n1 paket margarin\n1 bağ maydanoz\n1 yemek kaşığı kuru reyhan\nTuz\npul biber\nkarabiber\n1 kase ceviz içi\n\nDışı İçin:\n2 kilo ince kısırlık bulgur (Maraşta düğürcük denir)\nYarım kilo köftelik et\nBir yemek kaşığı Maraş biberi\n1 paket tel şehriye\n2 yumurta\nTuz",
      tarif: "1. Mümkünse bir gün önceden içini kavurup hazırlayalım, ki iyice donsun.\n2. İçinin hazırlanması için önce kıymamızı bir tencereye bırakalım ve altını yakalım. Yavaş yavaş kendi halinde biraz kavuralım.\n3. Sonra ince ince doğradığımız kuru soğanlarımızı ekleyip kıymayla beraber kavuralım ama kıyma suyunu çekene kadar asla yağını bırakmayalım.\n4. Kıyma ve soğanlar suyunu iyice çekince margarini ekleyip kavuralım ve baharatları, maydanozu, cevizi ekleyelim ve bir tepsiye alalım.\n5. Kavrulan içimizi iyice soğuyup donmasını bekleyelim. İçimizi hazır edince sıra köftenin dışını hazırlamaya geldi.\n6. Onun için yine geceden bir paket tel şehriyemizi soğuk suya ıslayalım.\n7. Köftelik bulgurumuzu alalım.\n8. Üzerine maraş biberimizden bırakalım.\n9. Sonra suya ısladığımız tel şehriyemizin suynu süzüp bulgurumuzu onunla ıslayalım.\n10. Et makineniz varsa etimizi tuzlayıp çekelim. Sonra ısladığımız bulgurla beraber etimizi et makinemizde beraberce çekelim. Eğer makineniz yoksa etinizi çekilmiş alın ve elde yoğurun.\n11. Köftemizi makinede çektikten sonra elimizle yoğuralım ve yumurtasını kıralım.\n12. Yanımıza bir kaseye su bırakalım ve köftemizden ceviz kadar alıp iki parmağımızla oyalım. Sonra donmuş halde olan içimizi elimizde sıkıp birer parça bırakalım. Zor olur derseniz bir kaşık ile köftenin içine bırakalım ve elimizde yuvarlayıp kapatalım. Böylece tüm köftelerimizi hazırlayalım.\n13. Sonra tencereye su bırakalım ve su kaynayınca köfteleri içine atıp haşlayalım. Afiyet olsun."),
  Food(
      name: "Tirşik",
      image: "assets/food_images/8.png",
      icindekiler:
          "1 demet tirşik pancarı\n1 kg yoğurt\n3 kaşık un\n1 baş sarımsak\nTuz\nyarım kase aşurelik buğday\n1 kase nohut",
      tarif: "1. Aşurelik buğdayları büyükçe bir tencerenin içerisine alın. Üzerine 2 litre kadar su ekleyiTarladan veya çarşıdan satılan yılan otunu yani yöre insanının değimi ile yılan pancarını alıyoruz, zehirli ve eli yaktığı için çok dikkatli olunması gerekiyor. Onun için eldiven kullanınız yok elime şifa olsun derseniz elle de yapılabilir biraz ele dalıyor. Pancarımızı yıkayalım ve bir sofra bezine serip bırakıp suyunu kurutalım.\n2. Sonra incecik bıçakla kıyalım, bu işlemi mümkünse akşamdan yapalım sonra yoğurdumuzu alalım, içine beş altı bardak su bırakıp ayran yapalım.\n3. Sonra unumuzu da içine bırakalım, incecik kıydığımız pancarımızı düdüklü tenceresine basalım üzerine yaptığımız unlu ayranımızı boşaltıp ocağın altını yakalım ve kısık ateşte karıştıra karıştıra yoğurdumuzu kesmeden ocaktan ısıtalım. Sakın kaynatmayın sadece sütten yoğurt mayalaması ısına getirelim ve düdüklünün ağzına bir tencere kapağı kapatalım. Kendi kapağını değil.\n4. Sonra sıkıca bir sofra bezine sarıp ertesi gün öğlene kadar mayalanmasını bekliyoruz. Mayalanma esnasında zehiri gidiyor otun ve şifalı bir hale geliyor.\n5. Önceden ıslattığımız bir kase nohut ve yarım kase aşurelik buğday yani döğmemizi de ertesi gün mayalanmış olan düdüklüdeki tirşiğimizin içine bırakıp bu defa düdklünün kendi kapağını kapatıp, en az bir buçuk saate yakın pişiriyoruz.\n6. Pişen tirşiğimize bir baş sarımsağımızı tuzla dövüp karıştırıp servise hazır hale getiriyoruz.Afiyet Ollsun 👌😊"),
  Food(
      name: "Kuru Dolma",
      image: "assets/food_images/1.png",
      icindekiler:
          "15 adet kuru patlıcan\n15 adet kuru biber\n15 adet kuru kabak\n3 adet kuru salatalık\n\nİç harcı için;\n2 su bardağı pirinç\n1 avuç bulgur\n3-4 adet kuru soğan\n2 tatlı kaşığı reyhan\n2 tatlı kaşığı nane\n2 tatlı kaşığı sumak\n2-3 tatlı kaşığı kırmızı acı pul biber\n1 tatlı kaşığı kekik\n2 çay kaşığı kimyon\nKarabiber\n4-5 adet domates\n2 yemek kaşığı biber salçası\n2 yemek kaşığı domates salçası\nYarım çay bardağı sıcak su\nBol zeytinyağı\nTuz\n\nÜzerinde gezdirmek için;\n3-4 yemek kaşığı zeytinyağı\n2 diş sarımsak\n1 tatlı kaşığı kuru nane",
      tarif: "1. Pirinçlerimiz ve bulgurumuz güzelce yıkanır.\n2. Soğanlarımız yemeklik doğranıp, bol zeytinyağında dirilikleri geçene dek pişirilir.\n3. Pirinç, bulgur ve tüm baharatlar eklenerek harmanlanır.\n4. Salçaları da ilave edilip, 4-5 dakika kadar kavrulur.\n5. Üzerine geçmeyecek kadar domates rendesi eklenip veya rondodan da çekebilirsiniz, kapak kapalı kısık ateşte 5 dakika kadar tutulur. Domatesler suluysa, ekstra yarım çay bardağı su eklemenize gerek yoktur. 😉😉\n6. Kuru dolmalarımız, kaynar tuzlu suya aralarında 2-3 dakika olacak şekilde sıralamasıyla; patlıcan-kabak-biber-salatalık olarak bırakılır.\n7. Yumuşadıklarında sudan çekilip, harçla çok olmayacak şekilde doldurulup, ağız kısımları yassılaştırılır.\n8. Tencerenin tabanını çapraz gelecek iki adet çatal yerleştirip, dolmaların ağızları iç kısma bakacak şekilde patlıcan-biber/kabak-salatalık olarak dizilir.\n9. Küçük bir cezvede, 3-4 yemek kaşığı zeytinyağında; 2 diş ezilmiş sarımsak ve nane hafif kavrulup üzerlerinden gezdirilir.\n10. En son olarak üstünü geçmeyecek kadar sıcak su dökülüp, her tarafını kaplayacak boyutta porselen bir tabak yerleştirilir ve kısık ateşte 1 saatpişirilir. ⌚️💕✔️\n11. Süre sonunda, 2 parmak kadar su kalacaktır dibinde. Demlenmesi içinde yarım saat-45 dakika yetecektir, daha fazla da kalabilir. 😉\nNot: ⭐️👉 Zeytinyağlı olduğundan, tekrar ısıtılmasına gerek yoktur.\nMüthiş Maraş usulü bol baharatlı kuru dolmalarımız servise hazırdır. 🎊"),
  Food(
      name: "Şekerli Fıstıklı Pide",
      image: "assets/food_images/4.png",
      icindekiler:
          "İçi için;\n700 gram tuzsuz peynir (künefelik)\n2 su bardağı toz Antep fıstığı\n1 su bardağından iki parmak eksik şeker\n(isteğe göre ayarlanabilir)\n1 yumurta akı\n\nHamuru için;\n1 su bardağı süt\n1 su bardağı ılık su\n1 paket maya\n2-3 yemek kaşığı sıvı yağ\n1 tatlı kasığı şeker\n1 tatlı kasığı tuz\nAldığı kadar un\n\nÜzeri için;\nYarım su bardağı su\n1 yemek kaşığı un",
      tarif:
          "1. Gelelim pidemizi hazırlamaya Öncelikle hamurumuzu hazırlayalım ılık suyun içine şekeri ve mayayı koyup 2-3 dk bekletelim.\n2.Maya kabarsın daha sonra diğer malzemeleri de ekleyelim karıştıralım unu yavaş yavaş ilave edelim ele yapışmayan bir hamur elde edelim.\n3.Üstünü kapatıp yarım saat bekletelim o beklerken iç harcımızı hazırlayalım bunun için peyniri rendeleyelim.\n4.İçine yumurta akını şekeri ve toz fıstığı ekleyip bir güzel yoğuralım.Artık böreğimizi yapmaya başlayabiliriz.\n5.Hamurdan mandalina büyüklüğünde parçalar koparıp uzun ve ince bir şekilde açalım (çok kalın açmayalım hamur mayalı olduğu için pişerken de kabaracak) iç harcımızı koyup pidemize şeklini verelim ve unlanmış tepsimize yerleştirelim.\n6.Hepsini bu şekilde yapıp bitirelim ve kenarlara unlu su sürelim ve 180 derecelik fırında pişirelim. Afiyet olsun ☺️\n\nNot : Biz bu içi hazırlayıp fırına gönderiyoruz. Orda pişiyor tabiki evde olandan çok daha lezzetli oluyor. Sonuçta taş fırınla evdeki fırın bir olmaz :) eğer imkanınız varsa siz de yollayabilirsiniz ayrıca pide hamurunu evde yapmak istemeyenler fırından mayalı hamur da alabilir."),

  Food(
      name: "Acem Pilavı",
      image: "assets/food_images/9.png",
      icindekiler:
          "1 adet orta boy soğan\n2,5 yemek kaşığı tereyağı\n2 adet orta boy havuç\n100-150 gr kuşbaşı doğranmış et\n2 su bardağı pirinç\n2,5 su bardağı sıcak su\n2 çay kaşığı tuz\nYarım çay kaşığı karabiber",
      tarif:
          "1. Etler pişirilir. Pirinçler yıkanır.\n2. Pirinçlerin üzerini geçecek kadar sıcak su konur. 1 çay kaşığı tuz eklenir, bekletilir.\n3. Pilav tenceresine yemeklik doğranan soğanlar ve tereyağı konur ve kavrulmaya başlanır.\n4. 3-5 dakika sonra kibrit çöpü gibi doğranan havuçlar ilave edilir. 3-5 dakika sonra da etler ilave edilir ve havuçlar kendini bırakana kadar pişirilir.\n5. Daha sonra tuzlu sıcak suda yarım saat bekletilen pirinçler ilave edilir. 3-5 dakika da pirinçler varken kavrulur.\n6. Sıcak su ilave edilir. Tuz ve karabiber dökülür ve pişmeye bırakılır.\n7. 10-15 dk pilav dinlendirilir ve servis edilir.\nAfiyetler olsun !"),

  Food(
      name: "Tereyağlı Çörek",
      image: "assets/food_images/10.png",
      icindekiler:
          "1 su bardağı süt\n1 çay bardağı yoğurt\n1 çay bardağı sıvı yağ\n125 gr tereyağı veya margarin\n1 paket kabartma tozu\n1 tatlı kaşığı şeker\n1 tatlı kaşığı tuz\nÜzerine sürmek için;\n\n1 yemek kaşığı çörek otu\n1 yemek kaşığı susam\n1,5 yemek kaşığı irmik\nAldığı kadar un\n2 yemek kaşığı yoğurt\n2 yemek kaşığı sıvı yağ\nÇörek otu",
      tarif:
          "1. Öncelikle tereyağı eritilir ve diğer yandan un, kabartma tozu ve tüm kuru malzemeler karıştırılır.\n2. Sırasıyla sıvı yağ, tereyağı, yoğurt hepsi yavaş yavaş ilave edilip, kulak memesi kıvamında bir hamur elde edene kadar yoğrulur.\n3. Bezelere ayrılır ve tezgah üzerinde merdaneyle hafifçe açılır.\n4. Üzerine çatalla çizikler yapılır ya da aşağıdaki resimlerden de anlayacaksınız 👇 merdaneyle de yapabilirsiniz.\n5. Yağlı kağıt serilmiş fırın tepsisine dizilir.\n6. Üzerine yoğurt ve sıvı yağ karışımı çırpılarak sürülür.\n7. Çörek otu serperek, 180 derecede altı üstü hafif kızarana dek pişirilir.\n\nUzun süre bayatlamayan, nefis çörekler hazır☺️\nAfiyetler olsun!"),
];
