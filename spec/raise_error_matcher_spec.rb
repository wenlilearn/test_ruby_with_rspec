RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  it 'can check for any error' do
    expect { some_method }.to raise_error(NameError)
    expect { 1 / 0}.to raise_error(ZeroDivisionError)
  end
end