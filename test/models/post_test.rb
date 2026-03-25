require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save post without title" do
    post = Post.new
    assert_not post.save, "Saved the post without title"
  end

  test "should save post with title" do
    post = Post.new(title: "new one")
    assert post.save, "Saved the post with title"
  end

  test "should save views as integer" do
    post = Post.new(title: "new one", views: "add")
    assert post.save, "Saved the post with title+views"
  end
end
