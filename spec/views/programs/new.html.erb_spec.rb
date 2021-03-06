require 'rails_helper'

RSpec.describe "programs/new", type: :view do
  before(:each) do
    assign(:program, Program.new(
      :title => "MyString",
      :subtitle => "MyString",
      :activity_type => "MyString",
      :short_description => "MyString",
      :long_description => "MyText",
      :loc => "MyString",
      :mins => 1,
      :conference => nil
    ))
  end

  it "renders new program form" do
    render

    assert_select "form[action=?][method=?]", programs_path, "post" do

      assert_select "input#program_title[name=?]", "program[title]"

      assert_select "input#program_subtitle[name=?]", "program[subtitle]"

      assert_select "input#program_activity_type[name=?]", "program[activity_type]"

      assert_select "input#program_short_description[name=?]", "program[short_description]"

      assert_select "textarea#program_long_description[name=?]", "program[long_description]"

      assert_select "input#program_loc[name=?]", "program[loc]"

      assert_select "input#program_mins[name=?]", "program[mins]"

      assert_select "input#program_conference_id[name=?]", "program[conference_id]"
    end
  end
end
