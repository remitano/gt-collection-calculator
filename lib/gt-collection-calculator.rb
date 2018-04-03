require 'bigdecimal'

class GtCollectionCalculator
  MAX_AMOUNT_THAT_USE_PERCENT = BigDecimal.new(2000)/0.015
  MAX_DEBIT_AMOUNT_THAT_USE_PERCENT = MAX_AMOUNT_THAT_USE_PERCENT * 1.015

  def self.credit2request(credit_amount)
    debit_amount = BigDecimal.new(credit_amount) + 105
    if debit_amount > MAX_AMOUNT_THAT_USE_PERCENT
      debit_amount - 2000
    else
      debit_amount/1.015
    end
  end

  def self.request2credit(request_amount)
    fee = [BigDecimal.new(request_amount) * 0.015, 2000].min
    request_amount + fee - 105
  end
end
