
def generate_token(column, length = 64)
  begin
    self[column] = SecureRandom.urlsafe_base64 length
  end while Model.exists?(column => self[column])
end

return generate_token
