class Order {
  String status;
  String orderNo;
  int value;
  int quantity;
  List items;

  Order({
    this.items,
    this.orderNo,
    this.quantity,
    this.status,
    this.value,
  });
}

List<Order> dummyOrder = [
  Order(
    items: ["Agbada", "Buba", "Sokoto"],
    value: 1000,
    orderNo: "Order No1947034",
    quantity: 2,
    status: "pending",
  ),
  Order(
    items: ["Agbada", "Buba", "Sokoto"],
    value: 1000,
    orderNo: "Order No1947034",
    quantity: 2,
    status: "completed",
  ),
  Order(
    items: ["Agbada", "Buba", "Sokoto"],
    value: 1000,
    orderNo: "Order No1947034",
    quantity: 2,
    status: "uncompleted",
  ),
  Order(
    items: ["Agbada", "Buba", "Sokoto"],
    value: 5000,
    orderNo: "Order No1947034",
    quantity: 2,
    status: "pending",
  ),
  Order(
    items: ["Agbada", "Buba", "Sokoto"],
    value: 1000,
    orderNo: "Order No1947034",
    quantity: 2,
    status: "completed",
  ),
];
