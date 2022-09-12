require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      id_user: "MyString",
      integer: "MyString",
      nome: "MyString",
      string: "MyString",
      email: "MyString",
      email: "MyString",
      senha: "MyString",
      password: "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[id_user]"

      assert_select "input[name=?]", "user[integer]"

      assert_select "input[name=?]", "user[nome]"

      assert_select "input[name=?]", "user[string]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[senha]"

      assert_select "input[name=?]", "user[password]"
    end
  end
end
