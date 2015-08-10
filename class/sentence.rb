class SentenceAnalyzer
  attr_accessor :sentence
  private :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def analyze
    @result = sentence.gsub(/[^a-z]/i,'').downcase.chars.inject(Hash.new(0)){|k,v|k[v.to_sym]+=1; k}
    l = least_frequent
    h = most_frequent
    make_sentence(h, l)
  end

  def least_frequent
    hsh = hsh2 = {}
    second_result = group_characters.min_by{|k,v| k}.last
    symbolize_second_result(second_result, hsh)
    find_lowest_code_point(hsh, hsh2)
    hsh2.min_by{ |k,v| v }
  end

  def most_frequent
    hsh = hsh2 = {}
    second_result = group_characters.max_by{|k,v| k}.last
    symbolize_second_result(second_result, hsh)
    find_lowest_code_point(hsh, hsh2)
    hsh2.max_by{ |k,v| v }
  end

  def group_characters
    @result.group_by{|k,v| v}
  end

  def symbolize_second_result(second_result, hsh)
    second_result.each { |e| hsh[e[0].to_sym] = e[1] }
    second_result
  end

  def find_lowest_code_point(hsh, hsh2)
    hsh.each_key { |k| hsh2[k] = "#{k}".ord }
  end

  def determine_plurality(attr)
    @result[attr[0]] > 1 ? "appearances." : "appearance."
  end

  def make_sentence(h, l)
    foo = "The most frequent letter is #{h[0]} with #{@result[h[0]]} "
    foo += determine_plurality(h)
    foo += "  The least frequent letter is #{l[0]} with #{@result[l[0]]} "
    foo += determine_plurality(l)
    foo
  end
end
