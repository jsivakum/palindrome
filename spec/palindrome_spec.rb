require('rspec')
require('palindrome.rb')
require('pry')

describe('Boolean#palindrome?') do
  it('returns true if a word reversed has the same last letter as the first letter of the word not reversed.') do
    expect(("aba").palindrome?()).to(eq(true))
  end
  it('removes punctuation from the phrase to be evaluated') do
    expect(("Never a foot too far, even").palindrome?()).to(eq(true))
  end
end
