require 'rails_helper'

RSpec.describe "registers/index", type: :view do
  before(:each) do
    assign(:registers, [
      Register.create!(
        id_user: 2,
        nome: "Nome",
        email: "Email",
        senha: "Senha"
      ),
      Register.create!(
        id_user: 2,
        nome: "Nome",
        email: "Email",
        senha: "Senha"
      )
    ])
  end

  it "renders a list of registers" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Senha".to_s, count: 2
  end
end
