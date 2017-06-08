
Pod::Spec.new do |s|

  s.name         = "DNWKWebViewController"
  s.version      = "0.0.3"
  s.summary      = "A simple inline browser for your iOS app"
  s.description  = <<-DESC
                      A simple inline browser for your iOS app.
                    - iPhone and iPad distinct UIs
                    - full landscape orientation support
                    - back, forward, stop/refresh and share buttons
                    - propress view support
                   DESC

  s.homepage     = "https://github.com/dawnnnnn/DNWKWebViewController"

  s.license      = "MIT"

  s.author       = { "dawnnnnn" => "tan32211@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/dawnnnnn/DNWKWebViewController.git", :tag => "#{s.version}" }

  s.source_files = 'DNWKWebViewController/**/*.{h,m}'
  s.resources    = 'DNWKWebViewController/**/*.{bundle,png,lproj}'

  # s.dependency "Masonry", "~> 1.0.2"
  s.framework    = "UIKit", "Foundation", "WebKit"
  s.requires_arc = true

end
