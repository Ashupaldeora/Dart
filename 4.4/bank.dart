class Bank {
  late bool isActive;
  late int age;
  late String balance;
  late String eyeColor;
  late String name;
  late String gender;
  late String company;
  late String email;
  late String phone;
  late String address;

  Bank._temp(this.isActive, this.age, this.balance, this.eyeColor, this.name,
      this.gender, this.company, this.email, this.phone, this.address);

  factory Bank.fromMap(Map m1) {
    bool isActive = m1['isActive'];
    String balance = m1['balance'];
    int age = m1['age'];
    String eyeColor = m1['eyeColor'];
    String name = m1['name'];
    String gender = m1['gender'];
    String company = m1['company'];
    String email = m1['email'];
    String phone = m1['phone'];
    String address = m1['address'];

    
    return Bank._temp(isActive, age, balance, eyeColor, name, gender,
        company, email, phone, address);

  }
}