import 'dart:io';

class Supermarket
{
   int ItemNumber = 0;
   String? ItemName ;
   int? Quantity , Tax , Discount;

   void set()
   {
    stdout.write('Item number : ');
    ItemNumber = int.parse(stdin.readLineSync()!);

    stdout.write("Item name : ");
    ItemName = stdin.readLineSync();

    stdout.write("Quantity : ");
    Quantity = int.parse(stdin.readLineSync()!);

    stdout.write("Tax : ");
    Tax = int.parse(stdin.readLineSync()!);

     stdout.write("Discount : ");
   Discount = int.parse(stdin.readLineSync()!);
   }

     void get() {
    
    print("Item Number: $ItemNumber");
    print("Item Name: $ItemName");
    print("Quantity: $Quantity");
    print("Tax: $Tax");
    print("Discount: $Discount");
  }
}
void main()
{
       stdout.write('Enter user id : ');
       String? userid = stdin.readLineSync();

       stdout.write('Enter password : ');
       String? password = stdin.readLineSync();

       if(userid=='Ashu17' && password == 'Ashupal1@')
       {
         stdout.write('Enter number of items : ');
         int numberOfItems = int.parse(stdin.readLineSync()!);
        
        List Litems = [];
        for(int i=1; i<=numberOfItems; i++)
        {
         Supermarket items = Supermarket();
         items.set();
         Litems.add(items);
        }
        Litems.sort((a,b)=> a.ItemNumber.compareTo(b.ItemNumber));
        print( Litems);
       }
       else{
        print('invalid userid and password');
       }
       
      

}