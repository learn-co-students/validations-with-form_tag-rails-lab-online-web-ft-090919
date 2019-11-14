Posts new code:

# <h2>Create a Post</h2>
# <%= form_tag posts_path, method: "post" do %>
#   <div class="field">
#     <%= label_tag "title", "Title" %>
#     <%= text_field_tag "title" %>
#   </div>

#   <div class="field">
#   <%= label_tag "category", "Category" %>
#   <p>Must be either "Fiction" or "Non-Fiction".</p>
#   <%= text_field_tag "category", @post.category %>
#   <p>
#     Please type carefully as our top scientists are working around the clock to
#     enable state-of-the-art dropdown technology for this form field.
#   </p>
# </div>

#   <div class="field">
#     <%= label_tag "content", "Content" %>
#     <%= text_field_tag "content" %>
#   </div>

#   <%= submit_tag "Create" %>
# <% end %>



# <%= form_tag("/posts") do %>
#   <% if @post.errors.any? %>
#     <div id="error_explanation">
#       <h2>There were some errors:</h2>
#       <ul>
#         <% @post.errors.full_messages.each do |message| %>
#           <li><%= message %></li>
#         <% end %>
#       </ul>
#     </div>
#   <% end %>
 
 
#   <div class="field<%= ' field_with_errors' if @post.errors[:title].any? %>">
#     <%= label_tag "title", "Title" %>
#     <%= text_field_tag "title", @post.title %>
#   </div>
 
#   <div class="field<%= ' field_with_errors' if @post.errors[:category].any? %>">
#     <%= label_tag "category", "Category" %>
#     <p>Must be either "Fiction" or "Non-Fiction".</p>
#     <%= text_field_tag "category", @post.category %>
#     <p>
#       Please type carefully as our top scientists are working around the clock to
#       enable state-of-the-art dropdown technology for this form field.
#     </p>
#   </div>

#   <div class="field<%= ' field_with_errors' if @post.errors[:content].any? %>">
#   <%= label_tag "content", "Content" %>
#   <%= text_field_tag "content", @post.content %>
#   </div>
 
#   <%= submit_tag "Create" %>
# <% end %>







Author edit code:

<h2>Editing "<%= @author.name %>"</h2>
<%= form_tag post_path(@author), method: "patch" do %>
  <div class="field">
    <%= label_tag "name", "Name" %>
    <%= text_field_tag "name", @author.name %>
  </div>

  <div class="field">
    <%= label_tag "email", "Email" %>
    <%= text_field_tag "email", @author.email %>
    <p>
      Please type carefully as our top scientists are working around the clock to
      enable state-of-the-art dropdown technology for this form field.
    </p>
  </div>

  <div class="field">
    <%= label_tag "phone_number", "Phone Number" %>
    <br />
    <%= text_area_tag "phone_number", @author.phone_number %>
  </div>
  <%= submit_tag "Update" %>
<% end %>




Posts Edit form code:
# <h2>Editing "<%= @post.title %>"</h2>
# <%= form_tag post_path(@post), method: "patch" do %>
#   <div class="field">
#     <%= label_tag "title", "Title" %>
#     <%= text_field_tag "title", @post.title %>
#   </div>

#   <div class="field">
#     <%= label_tag "category", "Category" %>
#     <p>Must be either "Fiction" or "Non-Fiction".</p>
#     <%= text_field_tag "category", @post.category %>
#     <p>
#       Please type carefully as our top scientists are working around the clock to
#       enable state-of-the-art dropdown technology for this form field.
#     </p>
#   </div>

#   <div class="field">
#     <%= label_tag "content", "Content" %>
#     <br />
#     <%= text_area_tag "content", @post.content %>
#   </div>
#   <%= submit_tag "Update" %>
# <% end %>







# <%= form_tag("/posts") do %>
#   <% if @post.errors.any? %>
#     <div id="error_explanation">
#       <h2>There were some errors:</h2>
#       <ul>
#         <% @post.errors.full_messages.each do |message| %>
#           <li><%= message %></li>
#         <% end %>
#       </ul>
#     </div>
#   <% end %>
 
 
#   <div class="field<%= ' field_with_errors' if @post.errors[:title].any? %>">
#     <%= label_tag "title", "Title" %>
#     <%= text_field_tag "title", @post.title %>
#   </div>
 
#   <div class="field<%= ' field_with_errors' if @post.errors[:category].any? %>">
#     <%= label_tag "category", "Category" %>
#     <p>Must be either "Fiction" or "Non-Fiction".</p>
#     <%= text_field_tag "category", @post.category %>
#     <p>
#       Please type carefully as our top scientists are working around the clock to
#       enable state-of-the-art dropdown technology for this form field.
#     </p>
#   </div>

#   <div class="field<%= ' field_with_errors' if @post.errors[:content].any? %>">
#   <%= label_tag "content", "Content" %>
#   <%= text_field_tag "content", @post.content %>
#   </div>
 
#   <%= submit_tag "Create" %>
# <% end %>



Author Create New original code:

<h2>Create an Author</h2>
<%= form_tag authors_path, method: "post" do %>
  <div class="field">
    <%= label_tag "name", "Name" %>
    <%= text_field_tag "name" %>
  </div>

  <div class="field">
    <%= label_tag "email", "Email" %>
    <%= text_field_tag "email" %>
  </div>

  <div class="field">
    <%= label_tag "phone_number", "Phone Number" %>
    <%= text_field_tag "phone_number" %>
  </div>

  <%= submit_tag "Create" %>
<% end %>