class PhoneNumber
  def self.clean(phone)
    phone.gsub(/\D*/, '').match(/^1?([2-9]{1}\d{2}[2-9]{1}\d{6})$/)

    $1
  end
end

class BookKeeping
  VERSION = 2
end
