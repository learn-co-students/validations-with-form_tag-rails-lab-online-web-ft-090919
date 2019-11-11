module ApplicationHelper

    def conditional_tag(name, condition, options=nil, &block)
  if condition
    content_tag name, capture(&block), options
  else
    capture(&block)
  end
 end

end
