class ContentController < Spree::BaseController
  rescue_from ActionView::MissingTemplate, :with => :render_404
  caches_page :show, :index, :if => Proc.new { Spree::Config[:cache_static_content] }

  def show
    render :action => params[:path].join('/')
  end
  
  def cvv
    render "cvv", :layout => false
  end  
end
