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
      "Architecture components",
      "Kotlin",
      "Coroutines",
      "Flow",
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
  ProjectItem(
    name: "Pixelbin: AI Photo Editor",
    url: "https://play.google.com/store/apps/details?id=io.pixelbin.app",
    desc:
        "AI Photo Editor: PixelBin uses sophisticated AI algorithms to automate complex editing tasks, allowing you to focus on the creative aspects of your photography. Adjust, crop, sharpen, and tint your photos with precision and ease. Our AI tools ensure that every adjustment contributes positively to the final image, reducing your workload and enhancing your creative output.",
    techStacks: [
      "Flutter",
      "Dart",
      "BLoC",
      "Isolates",
      "Canvas",
      "Native Method Channel",
      "Clean Architecture",
    ],
    role: "Built and launched PixelBin, an AI-powered photo editor app developed with Flutter, BLoC, and native Method Channels. Implemented Isolate-based image processing and optimized canvas rendering to enable smooth, real-time multi-layer editing ensuring high responsiveness and performance consistency.",
    images: ImagesPath.pixelbinImgList,
  ),
  ProjectItem(
    name: "CRM by DealerSocket",
    url:
        "https://play.google.com/store/apps/details?id=com.dealersocket.crm&hl=en-IN",
    desc:
        "The power and ease of DealerSocket’s Mobile CRM provides the best of socket right in your pocket. Search and add customers, scan a driver's license or VIN, find inventory, send a follow-up text or video, and complete daily tasks from anywhere — and up to 50% faster than on desktop.",
    techStacks: [
      "Android",
      "Kotlin",
      "Coroutines",
      "RxJava",
      "Koin",
      "Flow API",
      "MVVM",
      "Clean Architecture",
      "JUnit",
      "Espresso",
      "Mockito"
    ],
    role:
        "My role here as a Senior Android Developer to develop and improve feature and write test cases for same features.",
    images: ImagesPath.dsImgList,
  ),
  ProjectItem(
    name: "Store OS",
    url: "https://play.google.com/store/apps/details?id=com.fynd.pos&hl=en-IN",
    desc:
        "The ultimate retail store management platform. Access brand-wide inventory and manage your in-store operations, all on one comprehensive app. Fynd Store OS comes with a best-in-class endless aisle, omnichannel order & inventory management, shoppable digital catalog, advanced data analytics and many more exciting features.",
    techStacks: [
      "Android",
      "Jetpack Compose",
      "Mobile and Tablet UI",
      "Internationalisation",
      "Kotlin",
      "Coroutines",
      "Hilt",
      "Flow API",
      "Clean Architecture",
    ],
    role:
        "I have worked in Product Listing and Product details page and implemented rich UI for product variants using Jetpack compose.",
    images: ImagesPath.storeosImgList,
  ),
  ProjectItem(
    name: "Helpr",
    url:
        "https://play.google.com/store/apps/details?id=com.helprapp.android&hl=en-IN",
    desc:
        "Helpr aims to facilitate and improve the lives of working parents. We provide backup care that meets the needs of all working parents. We help employers and employees success by saving money. Helpr is proud to be Employee Benefit News' top innovator of the year. Connect your employees to quality care providers. When primary care falls through, families can request qualified providers in just three hours notice.",
    techStacks: [
      "Android",
      "Android jetpack components",
      "Kotlin",
      "MVVM",
      "Coroutine",
      "Local Caching"
    ],
    role:
        "I was leading this project and created it from scratch with Latest Android jetpack components, kotlin and MVVM architectures.",
    images: ImagesPath.helprImgList,
  ),
];
