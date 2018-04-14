class BannerService
  def initialize(activity, banner)
    @activity = activity
    @banner   = banner
  end

  def run
    clear_banner
    attach_banner
  end

  private

  def attach_banner
    banner = Banner.new(activity_id: @activity.id)
    banner.image = @banner
    banner.save!
  end

  def clear_banner
    if @activity.banner
      @activity.banner.destroy!
    end
  end
end
