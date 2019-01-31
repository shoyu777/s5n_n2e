RSpec.describe S5nN2e do
  it "has a version number" do
    expect(S5nN2e::VERSION).not_to be nil
  end

  it "basic test to shorten internationalization to i18n" do
    expect(S5nN2e.shorten('internationalization')).to eq("i18n")
  end

  it "basic test to shorten sentense" do
    expect(S5nN2e.shorten("basic test to shorten internationalization to i18n.")).to eq("b3c t2t to s5n i18n to i2n.")
  end
end
