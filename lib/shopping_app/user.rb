require_relative "item_manager"
require_relative "wallet"

class User
  include ItemManager

  attr_accessor :name #DICstore
  attr_reader :wallet

  def initialize(name)
    @name = name
    @wallet = Wallet.new(self) # UserインスタンスまたはUserを継承したクラスのインスタンスは
  end                          #生成されると、自身をオーナーとするウォレットを持ちます。

end
