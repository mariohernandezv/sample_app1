require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Pagina de Inicio (Home)" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should_not have_title('Sample App / Pagina de inicio') }
  end

  describe "Pagina de ayuda" do
    before { visit ayuda_path }
    it { should have_content('Ayuda') }
    it { should have_title('Sample App / Ayuda') }
  end

  describe "Pagina Acerca de" do
    before { visit acerca_de_path }
    it { should have_content('Acerca de') }
    it { should have_title('Sample App / Acerca de') }
  end
end
