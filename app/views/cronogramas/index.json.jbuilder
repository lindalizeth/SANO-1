json.array!(@cronogramas) do |cronograma|
  json.extract! cronograma, :id, :seleccione_fecha, :lugar_salida, :funcionarios_id, :ficha_grupo, :tipo_salida_id, :programa_formacion_id
  json.url cronograma_url(cronograma, format: :json)
end
