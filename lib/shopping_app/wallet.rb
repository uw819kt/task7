require_relative "ownable"

class Wallet
  include Ownable #(attr_accessor :owner)
  attr_reader :balance #購入者のチャージマネー

  def initialize(owner)
    self.owner = owner
    @balance = 0
  end

  def deposit(amount) #残高が増える
    @balance += amount.to_i
  end

  def withdraw(amount) #残高が減る(引き出し額<残高)
    return unless @balance >= amount
    @balance -= amount.to_i
    amount
  end

end