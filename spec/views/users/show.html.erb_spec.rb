require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      id_user: "Id User",
      integer: "Integer",
      nome: "Nome",
      string: "String",
      email: "Email",
      email: "Email",
      senha: "Senha",
      password: "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id User/)
    expect(rendered).to match(/Integer/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Senha/)
    expect(rendered).to match(/Password/)
  end
end
