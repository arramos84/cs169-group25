Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '505892609506480', 'c817644ca8347a746ce60339b09e030b'
end