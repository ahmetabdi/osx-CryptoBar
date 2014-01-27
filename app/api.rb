class Crypto
  class << self

    def toUsd(&block)
      AFMotion::JSON.get('http://data.mtgox.com/api/1/BTCUSD/ticker_fast') do |result|
        if result.success?
          json = result.object
          usdValue = json['return']['buy']['value']

          block.call("$ " + (usdValue.to_f).round(8).to_s)
        end
      end
    end

    def toGbp(&block)
      AFMotion::JSON.get('http://data.mtgox.com/api/1/BTCGBP/ticker_fast') do |result|
        if result.success?
          json = result.object
          gbpValue = json['return']['buy']['value']

          block.call("£ " + (gbpValue.to_f).round(8).to_s)
        end
      end
    end

  end
end