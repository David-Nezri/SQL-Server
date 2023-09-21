select o.ShipPostalCode,ISNUMERIC(o.ShipPostalCode) 'isnummber' from Orders o
select o.ShippedDate,ISDATE(o.ShippedDate) 'isdate' from Orders o
select o.ShipPostalCode, ISnull(o.ShipPostalCode, 'no date')  from Orders o

