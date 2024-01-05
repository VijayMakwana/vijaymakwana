import 'package:vijaymakwana/image_paths.dart';
import 'package:vijaymakwana/models/project_item.dart';

final List<ProjectItem> projectItems = [
  ProjectItem(
    name: "Tira: Online Beauty Shopping",
    url: "https://play.google.com/store/apps/details?id=com.ril.tira&hl=en-IN",
    desc:
        "Beauty means different things to different people, and that it can change from day to day and mood to mood. At Tira, we curate the best global and homegrown beauty brands and inspire you to explore and express your every idea of beauty. We are here to be your companion in this journey – For every day, every mood, every you. Whether you are beauty-obsessed or beauty-intrigued, here’s a space for you to experience shopping in a new way. Try, buy and love: pick from makeup, skincare, hair care, body care, fragrances and more.",
    techStacks: [
      "Android",
      "Kotlin",
      "Coroutines",
      "Clean Architecture",
      "MVVM",
      "Dagger-2, Hilt",
      "Juspay as a Payment SDK",
      "Modiface as a VTO(Virtual Try On) SDK"
    ],
    role:
        "I was leading Android team and worked on PLP(Product Listing Page), Checkout, Payments, Orders and Authentication modules.",
    images: ImagesPath.tiraImgList,
  ),
  ProjectItem(
    name: "GoFynd Online Shopping App",
    url: "https://play.google.com/store/apps/details?id=co.go.fynd&hl=en-IN",
    desc:
        "The ultimate fashion destination curated exclusively for the fashion-forward Gen Z and Millennial generation! Get ready to dive into a world of trendy styles, iconic streetwear, comfortable athleisure, and sustainable fashion right at your fingertips.",
    techStacks: [
      "Android",
      "Kotlin",
      "Coroutines",
      "LiveData",
      "Flow API",
      "Clean Architecture",
      "MVVM",
      "Hilt",
      "Razorpay as a Payment SDK"
    ],
    role:
        "My role was to integrate FDK(Fynd Development Kit) and upgrading the codebase with new APIs and match the app with modern android tech.",
    images: ImagesPath.fyndImgList,
  ),
];
