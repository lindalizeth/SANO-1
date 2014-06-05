json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nombres, :apellidos, :indentificacion, :telefono, :mail, :codigo, :EPS, :IPS, :centro_id, :tipodoc_id
  json.url funcionario_url(funcionario, format: :json)
end
