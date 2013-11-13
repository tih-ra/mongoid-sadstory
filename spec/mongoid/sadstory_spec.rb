require 'spec_helper'

describe Mongoid::Sadstory do
  let(:dumb_class){ DumbClass = Class.new {
    include Mongoid::Document
    include Mongoid::Timestamps
  } }

  subject{ dumb_class.new }

  it "should parse multiparamter attributes " do
    subject.assign_attributes(
      "created_at(1i)" => "2013",
      "created_at(2i)" => "02",
      "created_at(3i)" => "01",
    )
    expect(subject.created_at).to eq(Time.parse("2013-02-01"))
  end
end
