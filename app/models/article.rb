class Article <ApplicationRecord
  validates :title , presence: true , length: {minimum: 5 , maximum: 20}
  validates :discription , presence:true, length: {minimum: 10, maximium:200} 
end