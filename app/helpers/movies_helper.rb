module MoviesHelper
  def format_price(movie)
    if movie.free?
       content_tag(:strong, "Free!")
    else
       number_to_currency(movie.total_gross) 
    end
  end

  def image_for(movie)
    if movie.image_file.blank?
      image_tag 'placeholder.png'
    else
      image_tag movie.image_file
    end
  end


end

