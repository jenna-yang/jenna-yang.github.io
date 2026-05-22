# jekyll-remote-theme merges _data/socials.yml from al-folio (which ships
# example entries like inspirehep_id, rss_icon, custom_social pointing to
# Einstein) with our local file at the key level, so remote-only keys leak
# through. This hook keeps only the keys we actually want before render.
module Jekyll
  Hooks.register :site, :post_read do |site|
    allowed = %w[cv_pdf email linkedin_username scholar_userid]
    socials = site.data['socials']
    if socials.is_a?(Hash)
      site.data['socials'] = socials.select { |k, _| allowed.include?(k) }
    end
  end
end
