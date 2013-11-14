require "rspec"

class RSpecNotifySample
end

describe RSpecNotifySample do
  it "success" do
    expect("aaabb").to eq("a" * 3 + "b" * 2)
  end

  it "failure" do
    expect("aaabb").to eq("a" * 3 + "b")
  end
end
