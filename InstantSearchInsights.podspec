Pod::Spec.new do |s|
    s.name             = "InstantSearchInsights"
    s.module_name      = 'InstantSearchInsights'
    s.version          = "1.2.0"
    s.summary          = "A library library allowing developers to report click and conversion metrics related to Algolia search queries"
    s.homepage         = "https://github.com/algolia/instantsearch-ios-insights"
    s.license          = { type: 'MIT', file: 'LICENSE.md' }
    s.author           = { "Algolia" => "contact@algolia.com" }
    s.source           = { git: "https://github.com/algolia/instantsearch-ios-insights.git", tag: s.version.to_s }
    s.social_media_url = 'https://twitter.com/algolia'
    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    s.swift_version = '4.0'

        # Build settings
    # --------------
    # NOTE: Deployment targets should be kept in line with the API Client.
    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'
    s.tvos.deployment_target = '9.2'
    s.watchos.deployment_target = '3.0'

    s.source_files = [
        'Insights/**/*.{swift}'
    ]
end
