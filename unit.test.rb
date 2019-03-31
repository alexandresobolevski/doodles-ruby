require './calculator'

RSpec.describe do
  describe "basic" do
    it "true is true" do
      expect(true).to eq(true)
    end
  end
end

RSpec.describe Calculator do
  describe 'Calculator' do
    it 'multiplies' do
      calc = Calculator.new
      product = calc.multiply(1, 2)
      expect(product).to eq(2)
    end
    it 'divides' do
      calc = Calculator.new
      quotient = calc.divide(4, 2)
      expect(quotient).to eq(2)
    end
  end
end
