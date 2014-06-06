json.array!(@registrar_salidas) do |registrar_salida|
  json.extract! registrar_salida, :id, :Selccione_fecha, :lugarSalida, :FuncionarioACargo, :fichaGrupo, :tipoSalida_pedagogico, :Recreativo, :Otro, :digacual
  json.url registrar_salida_url(registrar_salida, format: :json)
end
