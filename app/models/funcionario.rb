class Funcionario < ActiveRecord::Base

  belongs_to :centro
  belongs_to :tipodoc

end
