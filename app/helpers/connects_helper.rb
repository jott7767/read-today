module ConnectsHelper

  def years_for_select
    arr = []
    2016.upto(Date.today.year.to_i) { |x| arr << x }
    arr
  end

end
