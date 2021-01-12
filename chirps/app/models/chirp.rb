class Chirp < ApplicationRecord
    validates_length_of :text, maximum: 140, allow_blank: true
end
