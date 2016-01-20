module WithBreadcrumbs
  def exercise_breadcrumb(e) #FIXME duplicated code
    base = link_to_path_element e
    if e.guide
      "#{guide_breadcrumb(e.guide)} <li>#{base}</li>".html_safe
    else
      base
    end
  end

  def guide_breadcrumb(g)
    base = link_to_path_element g
    if g.chapter
      "#{path_breadcrumb(g.chapter)} <li>#{base}</li>".html_safe
    else
      base
    end
  end

  def path_breadcrumb(p)
    "#{home_breadcrumb}<li>#{link_to_path_element p}</li>".html_safe
  end

  def home_breadcrumb
    "<li><span class=\"ahahamojimoji\">#{link_to 'ム', root_path }</span></li>".html_safe
  end
end
