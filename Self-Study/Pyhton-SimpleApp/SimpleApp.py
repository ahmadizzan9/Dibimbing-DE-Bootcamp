class Order():
    def __init__(self, order_id, customer_name,order_date, total_amount):
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

class OrderProcessor():
    def __init__(self):
        self.orders = []
    
    def add_order(self, order):
        self.orders.append(order)
    
    def calculate_total_revenue(self):
        total_revenue = sum(order.total_amount for order in self.orders)
        return total_revenue
    
    def calculate_total_tax(self, tax_rate):
        total_tax = sum(order.calculate_tax(tax_rate) for order in self.orders)
        return total_tax

order1 = Order('001', 'Budi', '2024-01-01', 100000)
order2 = Order('002', 'Siti', '2024-01-02', 150000)
order3 = Order('003', 'Andi', '2024-01-03', 250000)
processor = OrderProcessor()
processor.add_order(order1)
processor.add_order(order2)
processor.add_order(order3)
for order in processor.orders:
    order.display_order()
    print(f'Tax: Rp. {order.calculate_tax(0.1):.2f}')
    print('')
print(f'Total Revenue: Rp. {processor.calculate_total_revenue():.2f}')
print(f'Total Tax: Rp. {processor.calculate_total_tax(0.1):.2f}')