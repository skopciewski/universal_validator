require "spec_helper"
require "universal_validator/validator"

module UniversalValidator
  describe Validator do
    describe ".new" do
      context "without block" do
        Given(:validator) { Validator.new }
        Then { !validator.errors? }
      end

      context "with bock and error" do
        Given(:validator) { Validator.new { |v| v.add_error_for(:field1, "msg") } }
        Then { validator.errors? }
        And { validator.errors_for(:field1).count == 1 }
      end

      context "when add the error directly" do
        Given(:validator) { Validator.new { |v| v.add_error_for(:field1, "msg") } }
        When { validator.add_error_for(:field1, "msg2") }
        Then { validator.errors? }
        And { validator.errors_for(:field1).count == 2 }
        And { validator.errors_for(:field1).first == "msg" }
        And { validator.errors_for(:field1).last == "msg2" }
      end
    end
  end
end
