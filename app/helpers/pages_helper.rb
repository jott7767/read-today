module PagesHelper

  def activity_months
    {
      3 =>  ['february', 'march'],
      6 =>  ['may', 'june'],
      7 =>  ['june', 'july'],
      8 =>  ['july', 'august'],
      9 =>  ['august', 'september'],
      10 => ['september', 'october']
    }
  end

  def activity_to_month
    {
      'pizza_pledge'       => 3,
      'summer_games'       => 6,
      'zoo_day'            => 6,
      'street_heat'        => 7,
      'stuff_the_bus'      => 8,
      'read_with_bees'     => 8,
      'fairytale_festival' => 9,
      'howloween'          => 10
    }
  end

  def active_month?
    now = Date.today.strftime("%B").downcase
    activity = activity_to_month[params[:page]]

    activity_months[activity].include?(now)
  end

  def activity_present?
    activity_to_month.keys.include?(params[:page])
  end

end
