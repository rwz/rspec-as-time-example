describe "weird behavior" do
  it "should fail because Time != String" do
    my_double = double
    expect(my_double).to receive(:call).with(time: Time.utc(2016, 8, 8, 0, 0, 24))
    my_double.call time: "2016-08-08T00:00:24Z"
  end
end
