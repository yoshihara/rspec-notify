require "rspec"

class RSpecNotifySample
end

describe RSpecNotifySample do
  it "success" do
    expect("aaabb").to eq("a" * 3 + "b" * 2)
  end

  it "pending" do
    pending
    expect("aaabb").to eq("a" * 3 + "bb")
  end
end

