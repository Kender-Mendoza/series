class ApplicationPresenter
  def ApplicationPresenter.get_all_serie_states_for_filter
    State.all.pluck(:name,:id).unshift(["whith State", 0])
  end

  def ApplicationPresenter.get_all_serie_types_for_filter
    SerieType.all.pluck(:name, :id).unshift(["Whith Type", 0])
  end
end