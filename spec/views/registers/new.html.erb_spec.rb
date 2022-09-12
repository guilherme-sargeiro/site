require 'rails_helper'

RSpec.describe "registers/new", type: :view do
  before(:each) do
    assign(:register, Register.new(
      id_user: 1,
      nome: "MyString",
      email: "MyString",
      senha: "MyString"
    ))
  end

  it "renders new register form" do
    render

    assert_select "form[action=?][method=?]", registers_path, "post" do

      assert_select "input[name=?]", "register[id_user]"

      assert_select "input[name=?]", "register[nome]"

      assert_select "input[name=?]", "register[email]"

      assert_select "input[name=?]", "register[senha]"
    end
  end
end
