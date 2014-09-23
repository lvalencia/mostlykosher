MostlyKosher::Application.routes.draw do
  root "client#landing"
  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
