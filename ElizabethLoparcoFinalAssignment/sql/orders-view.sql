CREATE VIEW ordersView AS
SELECT c.nameFirst, c.nameLast, p.sku, p.salesPrice, o.quantity
FROM customers c, orders o, products p
WHERE o.productID = p.productID AND o.customerID = c.customerID