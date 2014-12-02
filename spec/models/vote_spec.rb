describe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        vp = Vote.new(value: 1)
        expect(vp.valid?).to eq(true)

        vn = Vote.new(value: -1)
        expect(vn.valid?).to eq(true)

        vi = Vote.new(value: 2)
        expect(vi.valid?).to eq(false)
      end
    end
  end
end
