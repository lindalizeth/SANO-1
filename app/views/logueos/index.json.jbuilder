json.array!(@logueos) do |logueo|
  json.extract! logueo, :id, :usuario, :clave
  json.url logueo_url(logueo, format: :json)
end
