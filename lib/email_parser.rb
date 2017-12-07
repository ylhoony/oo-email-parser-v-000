# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

# My solution
  # def parse
  #   @emails.split(/\.\s+|\s+|\,/).delete_if {|s| s == ""}.map { |string| string.strip}.uniq
  # end

# sample
  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end

end
