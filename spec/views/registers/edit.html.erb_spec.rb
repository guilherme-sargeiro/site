require 'rails_helper'

RSpec.describe "registers/edit", type: :view do
  before(:each) do
    @register = assign(:register, Register.create!(
      id_user: 1,
      nome: "MyString",
      email: "MyString",
      senha: "MyString"
    ))
  end

  it "renders the edit register form" do
    render

    assert_select "form[action=?][method=?]", register_path(@register), "post" do

      assert_select "input[name=?]", "register[id_user]"

      assert_select "input[name=?]", "register[nome]"

      assert_select "input[name=?]", "register[email]"

      assert_select "input[name=?]", "register[senha]"
    end
  end
end
