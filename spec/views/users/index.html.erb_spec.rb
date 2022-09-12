require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        id_user: "Id User",
        integer: "Integer",
        nome: "Nome",
        string: "String",
        email: "Email",
        email: "Email",
        senha: "Senha",
        password: "Password"
      ),
      User.create!(
        id_user: "Id User",
        integer: "Integer",
        nome: "Nome",
        string: "String",
        email: "Email",
        email: "Email",
        senha: "Senha",
        password: "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Id User".to_s, count: 2
    assert_select "tr>td", text: "Integer".to_s, count: 2
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "String".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Senha".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
  end
end
