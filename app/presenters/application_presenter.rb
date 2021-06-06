class ApplicationPresenter
  FIRST_OPTION_ID = 0
  
  def ApplicationPresenter.get_all_serie_states(first_option_name)
    State.all.pluck(:name,:id).unshift([first_option_name, FIRST_OPTION_ID])
  end

  def ApplicationPresenter.get_all_serie_types(first_option_name)
    SerieType.all.pluck(:name, :id).unshift([first_option_name, FIRST_OPTION_ID])
  end

  def ApplicationPresenter.get_all_series_whithout_one(serie, first_option_name)
    Serie.all.map { |s| [s.name, s.id] unless s == serie }
             .unshift([first_option_name, FIRST_OPTION_ID]).compact
  end
end