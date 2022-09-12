require "rails_helper"

RSpec.describe RegistersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/registers").to route_to("registers#index")
    end

    it "routes to #new" do
      expect(get: "/registers/new").to route_to("registers#new")
    end

    it "routes to #show" do
      expect(get: "/registers/1").to route_to("registers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/registers/1/edit").to route_to("registers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/registers").to route_to("registers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/registers/1").to route_to("registers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/registers/1").to route_to("registers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/registers/1").to route_to("registers#destroy", id: "1")
    end
  end
end
