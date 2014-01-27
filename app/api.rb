class Crypto
  class << self

    def toUsd(&block)
      AFMotion::JSON.get('http://data.mtgox.com/api/1/BTCUSD/ticker_fast') do |result|
        if result.success?
          json = result.object
          usdValue = json['return']['buy']['value']
          usd = "$" + sprintf("%.2f", usdValue.to_f.round(2).to_s)
          block.call(usd)
        end
      end
    end

    def toGbp(&block)
      AFMotion::JSON.get('http://data.mtgox.com/api/1/BTCGBP/ticker_fast') do |result|
        if result.success?
          json = result.object
          gbpValue = json['return']['buy']['value']
          gbp = "£" + sprintf("%.2f", gbpValue.to_f.round(2).to_s)
          block.call(gbp)
        end
      end
    end

  end
end