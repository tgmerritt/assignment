require_relative "../../class/sentence_analyzer"

describe SentenceAnalyzer do
  context "a complete sentence" do
    it "completes the assignment from Kevin" do
      complete = "This is a complete sentence with some random words."
      sa = SentenceAnalyzer.new(complete)
      expect(sa.analyze).to eq "The most frequent letter is e with 6 appearances.  The least frequent letter is l with 1 appearance."
    end

    it "exists as another example" do
      complete = "This is some random sentence that I am just making up as I am typing this.  I have no idea what the result will be."
      sa = SentenceAnalyzer.new(complete)
      expect(sa.analyze).to eq "The most frequent letter is t with 10 appearances.  The least frequent letter is b with 1 appearance."
      # haha it works
    end
  end
end
