json.extract! invoice, :id, :bookID, :employeeID, :customerID, :orderID, :invoiceDate, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
