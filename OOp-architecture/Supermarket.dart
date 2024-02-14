import 'dart:io';

class customer {
  late int cust_id;
  late String cust_name;
  late String cust_contact;

  void setter() {
    stdout.write("Enter your id : ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your name : ");
    cust_name = stdin.readLineSync()!;
    stdout.write("Enter your contact : ");
    cust_contact = stdin.readLineSync()!;
  }

  void getter() {
    print("Customer id : $cust_id");
    print("Customer name : $cust_name");
    print("Customer contact : $cust_contact");
  }

  idreturn() => cust_id;
}

class Product {
  List productlist = [
    {
      'productid': 110,
      'productName': 'facewash',
      'productPrice': 200,
      'quantity': 0
    },
    {
      'productid': 111,
      'productName': 'detergent',
      'productPrice': 500,
      'quantity': 0
    },
    {
      'productid': 112,
      'productName': 'biscuits',
      'productPrice': 250,
      'quantity': 0
    },
    {
      'productid': 113,
      'productName': 'bread',
      'productPrice': 400,
      'quantity': 0
    },
    {
      'productid': 114,
      'productName': 'rice',
      'productPrice': 600,
      'quantity': 0
    },
    {
      'productid': 115,
      'productName': 'soap',
      'productPrice': 150,
      'quantity': 0
    },
    {
      'productid': 116,
      'productName': 'refreshment',
      'productPrice': 500,
      'quantity': 0
    }
  ];

  List cart = [];

  List Showproducts() {
    Map tempmap = {};
    int custchoice = 0;
    int quantityofproduct = 0;
    late int tempindex;
    List.generate(
        productlist.length,
        (index) => print(
            "Id : ${productlist[index]['productid']} Name : ${productlist[index]['productName']}  Price : ${productlist[index]['productPrice']}"));

    stdout.write("Enter product id for add to cart : ");
    custchoice = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < productlist.length; i++) {
      if (custchoice == productlist[i]['productid']) tempindex = i;
    }

    if (custchoice >= 110 && custchoice <= 116) {
      tempmap['productid'] = productlist[tempindex]['productid'];
      tempmap['productName'] = productlist[tempindex]['productName'];
      tempmap['productprice'] = productlist[tempindex]['productPrice'];

      stdout.write("Enter quantity");
      quantityofproduct = int.parse(stdin.readLineSync()!);
      tempmap['Quantity'] = quantityofproduct;

      cart.add(tempmap);
    } else {
      print("********  no such product available ********");
    }

    stdout.write('Want to add more ? [y/n] : ');
    String yesno = stdin.readLineSync()!;

    if (yesno == "y") {
      Showproducts();
    }
    return cart;
  }

  static discount(List total) {
    double totalamount = 0;
    double discountpercentage = 0;
    double discountedamount = 0;
    for (int i = 0; i < total.length; i++) {
      totalamount +=
          (total[i]['productprice'] as int) * (total[i]['Quantity'] as int);
      print(
          "name : ${total[i]['productName']}, price : ${total[i]['productprice']}, quantity : ${total[i]['Quantity']}");
    }

    if (totalamount > 499 && totalamount < 1501)
      discountpercentage = 10;
    else if (totalamount > 1500 && totalamount <= 3500)
      discountpercentage = 20;
    else if (totalamount > 3500 && totalamount <= 6500)
      discountpercentage = 25;
    else if (totalamount > 6500) discountpercentage = 30;

    discountedamount +=
        totalamount - (totalamount * (discountpercentage / 100));

    print(
        "\nTotal Amount : $totalamount \n- Discount :${discountpercentage}%\nfinal Price : $discountedamount");
  }
}

class userschoice extends Product {
  static int dashboard() {
    int userchoice;

    print("\n* * * * * * * * * * * * * * * * * *");
    print("*                                 *");
    print("*   1.  add new customer       *");
    print("*   2.  all customer data      *");
    print("*   3.  search customer data   *");
    print("*   4.  exit                   *");
    print("*                                 *");
    print("* * * * * * * * * * * * * * * * * *\n");

    //geeting user choice
    print("\n- - - - - - - - - - - - - - - - - -");
    stdout.write(">> Enter your choice : ");
    userchoice = int.parse(stdin.readLineSync()!);
    print("- - - - - - - - - - - - - - - - - -");

    return userchoice;
  }
}

void main() {
  int userchoice;
  userchoice = userschoice.dashboard();
  customer details = customer();

  List customersdetails = [];

  while (userchoice != 4) {
    switch (userchoice) {
      case 1:
        customer data = customer();
        Product products = new Product();
        data.setter();
        Map tempmap2 = {};
        tempmap2['customersdata'] = data;
        List templist = products.Showproducts();
        tempmap2['customerscart'] = templist;

        customersdetails.add(tempmap2);
        break;

      case 2:
        for (int i = 0; i < customersdetails.length; i++) {
          customersdetails[i]['customersdata'].getter();
          Product.discount(customersdetails[i]['customerscart']);
        }
        break;

      case 3:
        int idsearch;
        bool recordsfound = false;

        stdout.write("Enter customer id to search: ");
        idsearch = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < customersdetails.length; i++) {
          if (idsearch == customersdetails[i]['customersdata'].idreturn()) {
            recordsfound = true;
            customersdetails[i]['customersdata'].getter();
            Product.discount(customersdetails[i]['customerscart']);
          }
        }

        if (!recordsfound) {
          print("      There are no such records!");
        }
        break;
      case 4:
        exit(0);

      default:
        print("Enter valid choice!");
        userschoice.dashboard();
    }
    userchoice = userschoice.dashboard();
  }
}
