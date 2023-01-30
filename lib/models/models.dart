class ChatModel {
  final String name_group;
  final String name;
  final String message;
  final String time;
  final bool status;
  final int messageNum;
  final String imgPath;

  ChatModel({
    required this.name_group,
    required this.name,
    required this.message,
    required this.time,
    required this.messageNum,
    required this.status,
    required this.imgPath,
  });
}

final List<ChatModel> chatModelItems = [
  ChatModel(
    name_group: "Flutter",
    imgPath: "https://www.southernliving.com/thmb/oHbXtfAoEQWkdChUg3k-wm1k0jE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-200493411-002-42af82ddf66049b9947cb857bfcf964f.jpg",
    name: 'Name User',
    message: "Hello! Flutter Security uses a combination of hardening and anti-tampering measures to shield the app and scan its environment for possible threats. Multiple layers of protection aimed at different attack vectors can effectively stop even the most sophisticated attack before it does any damage.",
    status: true,
    messageNum: 10,
    time: '10:39',
  ),
  ChatModel(
    name_group: "Name Group - 1",
    imgPath: "https://st4.depositphotos.com/3110937/19850/i/1600/depositphotos_198506552-stock-photo-beautiful-woman-cares-skin-face.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '4:39',
  ),
  ChatModel(
    name_group: "Name Group - 2",
    imgPath: "https://st2.depositphotos.com/3004545/6167/i/600/depositphotos_61671917-stock-photo-woman-with-body-and-face.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '11:37',
  ),
  ChatModel(
    name_group: "Name Group - 3",
    imgPath: "https://st4.depositphotos.com/13194036/38181/i/450/depositphotos_381819738-stock-photo-sportswoman-medical-mask-exercising-running.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: true,
    messageNum: 5,
    time: '2:05',
  ),
  ChatModel(
    name_group: "Name Group - 4",
    imgPath: "https://www.meme-arsenal.com/memes/8660f88227b9dbd753be1a9f0f7ad67d.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: true,
    messageNum: 13,
    time: '22:14',
  ),
  ChatModel(
    name_group: "Name Group - 5",
    imgPath: "https://i0.wp.com/therighthairstyles.com/wp-content/uploads/2021/08/1-face-framing-highlights.jpg?resize=500%2C523",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '24:00',
  ),
  ChatModel(
    name_group: "Flutter",
    imgPath: "https://www.southernliving.com/thmb/oHbXtfAoEQWkdChUg3k-wm1k0jE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-200493411-002-42af82ddf66049b9947cb857bfcf964f.jpg",
    name: 'Name User',
    message: "Hello! Flutter Security uses a combination of hardening and anti-tampering measures to shield the app and scan its environment for possible threats. Multiple layers of protection aimed at different attack vectors can effectively stop even the most sophisticated attack before it does any damage.",
    status: true,
    messageNum: 10,
    time: '01:39',
  ),
  ChatModel(
    name_group: "Name Group - 1",
    imgPath: "https://st4.depositphotos.com/3110937/19850/i/1600/depositphotos_198506552-stock-photo-beautiful-woman-cares-skin-face.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '14:18',
  ),
  ChatModel(
    name_group: "Name Group - 2",
    imgPath: "https://st2.depositphotos.com/3004545/6167/i/600/depositphotos_61671917-stock-photo-woman-with-body-and-face.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '03:40',
  ),
  ChatModel(
    name_group: "Name Group - 3",
    imgPath: "https://st4.depositphotos.com/13194036/38181/i/450/depositphotos_381819738-stock-photo-sportswoman-medical-mask-exercising-running.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '15:29',
  ),
  ChatModel(
    name_group: "Name Group - 4",
    imgPath: "https://www.meme-arsenal.com/memes/8660f88227b9dbd753be1a9f0f7ad67d.jpg",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '09:00',
  ),
  ChatModel(
    name_group: "Name Group - 5",
    imgPath: "https://i0.wp.com/therighthairstyles.com/wp-content/uploads/2021/08/1-face-framing-highlights.jpg?resize=500%2C523",
    name: 'Name User',
    message: 'repellat earum qui,repellat earum qui',
    status: false,
    messageNum: 35,
    time: '14:28',
  ),
];
