require 'cfndsl'
require 'zone'

class Template
  attr_reader :file, :extras

  def initialize(file, extras = [])
    @file = file
    @extras = extras
  end

  def << entry
    extras << entry
  end

  def to_s
    dsl? ? dsl_template : json_template
  end

  private

  def dsl?
   @file.end_with?('.rb')
  end

  def dsl_template
    CfnDsl::eval_file_with_extras(file, extras).to_json
  end

  def json_template
    File.read file
  end
end
