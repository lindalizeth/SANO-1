json.array!(@programa_formacions) do |programa_formacion|
  json.extract! programa_formacion, :id, :nombre
  json.url programa_formacion_url(programa_formacion, format: :json)
end
