module ApplicationHelper

def title
  base_title = "Media Haste"
  if @title.nil?
    base_title
  else
    "#{base_title} | #{@title}"
  end
end



end
