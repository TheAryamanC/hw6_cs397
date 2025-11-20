Given('I have a todo {string}') do |description|
  @todo = Todo.create!(description: description, done: false)
end

Given('I am on the todos page') do
  visit todos_path
end

When('I click the {string} button for {string}') do |button_text, todo_description|
  todo = Todo.find_by(description: todo_description)
  within("#todo_#{todo.id}") do
    click_button button_text
  end
end

Then('I should see {string}') do |text|
  assert page.has_content?(text), "Expected to see '#{text}' but did not"
end

When('I try to update a non-existent todo') do
  visit "/todos/99999"
end

Then('I should see a not found error') do
  assert_equal 404, page.status_code
end
