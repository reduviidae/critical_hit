class User < ApplicationRecord
  enum sexuality: SEXUALITIES, _prefix: true
end
