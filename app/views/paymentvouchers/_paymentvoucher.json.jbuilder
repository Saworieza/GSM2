json.extract! paymentvoucher, :id, :number, :site_id, :contractorinvoice_id, :created_at, :updated_at
json.url paymentvoucher_url(paymentvoucher, format: :json)
