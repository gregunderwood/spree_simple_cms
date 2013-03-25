module Spree
  module PagesHelper
    
    def pages_list_link(params)
      page = Spree::StaticPage.published.order("position ASC")
      items = page.map do |pg|
        content_tag(:li, link_to(pg.title, page_path("#{pg.permalink}")))
      end
      
      content_tag(:ul, raw(items.join("\n")), :class => params[:class])
    end
    
  end
end
