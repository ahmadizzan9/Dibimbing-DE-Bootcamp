# 🐍 Simple Order Management App with Python

> **Assignment:** Membuat Aplikasi Sederhana dengan Python  
> **Bootcamp:** Data Engineering by Dibimbing  
> **Topic:** Python Programming — Object-Oriented Programming (OOP)

---

## 📌 What This Project Does

A simple Python application that:

- Stores order data using a **class**
- Calculates **tax (10%)** for each order automatically
- Calculates **total revenue** and **total tax** across all orders

---

## 🧠 OOP Concept: Encapsulation

**Encapsulation** means grouping related data and functions together inside a **class**, so each object manages its own data and behavior.

### `Order` Class — stores a single order and calculates its tax

```python
class Order():
    def __init__(self, order_id, customer_name, order_date, total_amount):
        self.order_id = order_id
        self.customer_name = customer_name
        self.order_date = order_date
        self.total_amount = total_amount

    def calculate_tax(self, tax_rate):
        return self.total_amount * tax_rate

    def display_order(self):
        print(f"Order ID: {self.order_id}")
        print(f"Customer Name: {self.customer_name}")
        print(f"Order Date: {self.order_date}")
        print(f"Total Amount: Rp.{self.total_amount:.2f}")
```

### `OrderProcessor` Class — manages multiple orders and computes totals

```python
class OrderProcessor():
    def __init__(self):
        self.orders = []

    def add_order(self, order):
        self.orders.append(order)

    def calculate_total_revenue(self):
        return sum(order.total_amount for order in self.orders)

    def calculate_total_tax(self, tax_rate):
        return sum(order.calculate_tax(tax_rate) for order in self.orders)
```

---

## ✅ Test Result

3 orders were inserted to verify the program works correctly:

| Order ID | Customer | Date       | Amount      |
|----------|----------|------------|-------------|
| 001      | Budi     | 2024-01-01 | Rp 100,000  |
| 002      | Siti     | 2024-01-02 | Rp 150,000  |
| 003      | Andi     | 2024-01-03 | Rp 250,000  |

### Output

```
Order ID: 001
Customer Name: Budi
Order Date: 2024-01-01
Total Amount: Rp.100000.00
Tax: Rp. 10000.00

Order ID: 002
Customer Name: Siti
Order Date: 2024-01-02
Total Amount: Rp.150000.00
Tax: Rp. 15000.00

Order ID: 003
Customer Name: Andi
Order Date: 2024-01-03
Total Amount: Rp.250000.00
Tax: Rp. 25000.00

Total Revenue: Rp. 500000.00
Total Tax: Rp. 50000.00
```

The program successfully calculated **10% tax per order** and summed up the total revenue and total tax automatically.

---

## 🗂️ File Structure

```
python-SimpleApp/
│
├── SimpleApp.py
└── Explanation.md
```

No external libraries required.