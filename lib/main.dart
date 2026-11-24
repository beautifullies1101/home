void main() {
  String name = "Раф";
  int quantity = 3;
  String size = "M";
  String paymentText = "Оплата картой";
  String message = "Спасибо за покупку!";
  bool hasCard = true;
  double price = 1200;
  double sizePrice = 0;
  if (size == "S") {
    sizePrice = 0;
  } else if (size == "M") {
    sizePrice = 200;
  } else if (size == "L") {
    sizePrice = 400;
  }
  String topping = "Кокос";
  double toppingPrice = 0;
  if (topping == "Кокос") {
    toppingPrice = 150;
  } else if (topping == "Ваниль") {
    toppingPrice = 150;
  } else if (topping == "Нет") {
    toppingPrice = 0;
  }
  double cupPrice = price + sizePrice + toppingPrice;
  double total = cupPrice * quantity;
  double discount = 0;
  if (hasCard) {
    discount = total * 0.10;
  } else {
    discount = total * 0.05;
  }
  double finalPrice = total - discount;
  String text = "";
  if (topping == "Кокос") {
    text = "Ваш раф с кокосом!";
  } else {
    text = "Ваш раф без кокоса";
  }
  print("========================");
  print("      Dastan      ");
  print("========================");
  print("Напиток: $name");
  print("Размер: $size");
  print("Количество: $quantity");
  print("Добавка: $topping");
  print("------------------------");
  print("Цена напитка: $price тг");
  print("Размер стакана: $sizePrice тг");
  print("Добавка: $toppingPrice тг");
  print("Общая сумма: $total тг");
  print("Скидка: $discount тг");
  print("------------------------");
  print("ИТОГО: $finalPrice тг");
  print(paymentText);
  print(text);
  print(message);
  print("========================");
}
