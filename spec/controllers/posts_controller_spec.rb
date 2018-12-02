require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:my_post) { Post.create!(title: "tests", body: "testtesttesttesttesttesttest") }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns Post.all to post" do
      get :index
      expect(assigns(:posts)).to eq([my_post])
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, params: { post_id: my_post.id }
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show
      expect(response).to render_template :show
    end

    it "assigns my_post to @post" do
      get :show
      expect(assigns(:post)).to eq([my_post])
    end
  end


end
