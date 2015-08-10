Assignment
==========

This is an exercise I worked on for an assignment.  It counts the letters used in a sentence and returns a result that tells you the most frequently appearing and least frequently appearing letter and the count of each letter's appearance.

To run:

1. Clone the repo
2. Ensure Ruby 2.2.2 and RSpec are installed
3. Run specs with:
```ruby
rspec
```
4. Go the project and load up IRB or PRY, include the SentenceAnalyzer class, analyze stuff.  As an example:
```ruby
2.2.2 :001 > def reload
2.2.2 :002?>   load 'class/sentence_analyzer.rb'
2.2.2 :003?> end
 => nil
2.2.2 :004 > reload
 => true
2.2.2 :005 > complete = "This is some random complete sentence as a test in irb."
 => "This is some random complete sentence as a test in irb."
2.2.2 :006 > sa = SentenceAnalyzer.new(complete)
 => #<SentenceAnalyzer:0x007f94e1b7b060 @sentence="This is some random complete sentence as a test in irb.">
2.2.2 :007 > sa.analyze
 => "The most frequent letter is e with 7 appearances.  The least frequent letter is b with 1 appearance."
2.2.2 :008 >
```

