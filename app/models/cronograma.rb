class Cronograma < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :tipo_salida
  belongs_to :programa_formacion

validates :tipo_salida, :presence => true
validates :programa_formacion, :presence => true
validates :ficha_grupo, :presence => true
validates :seleccione_fecha, :presence => true
validates :lugar_salida, :presence => true
validates :funcionario, :presence => true




end
