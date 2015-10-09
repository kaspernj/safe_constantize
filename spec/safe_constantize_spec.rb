require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "SafeConstantize" do
  describe "#constantize" do
    it "constantizes allowed classes" do
      expect(SafeConstantize.constantize("File", ["File"])).to eq File
    end

    it "doesnt constantize illegal classes" do
      expect { SafeConstantize.constantize("File", ["String"]) }.to raise_error(SafeConstantize::IllegalClassToConstantize)
    end
  end
end
