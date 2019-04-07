require 'rails_helper'

RSpec.describe NewsfeedController, type: :controller do
  describe "#index" do
    context "When there are no posts in the system" do
      it "should return a empty array" do
        get :index
        expect(JSON.parse(response.body)).to eq([])
      end
    end

    context "When posts are present in the system" do
      let(:users) { FactoryBot.create_list(:user, 5) }

      let(:posts) do
        post_list = []
        users.each do |user|
          post_list << FactoryBot.create_list(:post, 5, user_id: user.id)
        end
        post_list.flatten
      end

      let(:comments) do
        users.each do |user|
          posts.each do |post|
            FactoryBot.create_list(:comment, 5, user_id: user.id, post_id: post.id)
          end
        end
      end

      before do
        users
        posts
        comments
      end

      context "When page number is not passed" do
        let(:expected_result) do
          list = []
          Post.fetch_records.each do |post|
            list << PostSerializer.new(post).to_json
          end
          list.join(',')
        end
        it "should return latest 50 posts with user and comments with users" do
          get :index
          expect(JSON.parse(response.body)).to eq(JSON.parse("[#{expected_result}]"))
        end
      end

      context "When page number is passed" do
        let(:page_number) { 2 }
        let(:expected_result) do
          list = []
          Post.fetch_records(page_number).each do |post|
            list << PostSerializer.new(post).to_json
          end
          list.join(',')
        end
        it "should return latest 50 posts with user and comments with users" do
          get :index, params: {page_number: page_number}
          expect(JSON.parse(response.body)).to eq(JSON.parse("[#{expected_result}]"))
        end
      end
    end
  end
end
