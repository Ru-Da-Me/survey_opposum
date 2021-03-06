require 'test_helper'

class LoginLogoutTest < ActionDispatch::IntegrationTest

  test "login page works" do
    get authors_path
    assert_redirected_to session_new_path
    follow_redirect!
    assert_template "new"

    post session_create_path, {email: "nonexistant@mail.com", password: "gibberish"}
    assert_redirected_to session_new_path
    follow_redirect!
    assert_template "new"

    post session_create_path, {email: "ruti@mail.com", password: "iamruti"}
    assert_redirected_to surveys_path
    follow_redirect!
    assert_template "index"
  end

  # test "can create survey" do
  #   post session_create_path, {email: "ruti@mail.com", password: "iamruti"}
  #   get new_survey_path
  #   post surveys_path, method: :post, {title: "First Survey", description: "I am the first survey."}
  # end
end
