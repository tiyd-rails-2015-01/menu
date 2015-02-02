json.array!(@bank_registers) do |bank_register|
  json.extract! bank_register, :id, :transaction_name, :transaction_amount, :total
  json.url bank_register_url(bank_register, format: :json)
end
