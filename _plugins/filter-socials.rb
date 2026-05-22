# jekyll-remote-theme merges _data/socials.yml from al-folio (which ships
# example entries like inspirehep_id, rss_icon, custom_social pointing to
# Einstein) with our local file at the key level, so remote-only keys leak
# through. This hook keeps only the keys we actually want before render.
module Jekyll
  Hooks.register :site, :post_read do |site|
    # Explicit display order — jekyll-socials renders in hash-insertion order
    # and the remote/local data merge can scramble that, so rebuild the hash.
    order = %w[email linkedin_username scholar_userid github_username cv_pdf]
    socials = site.data['socials']
    if socials.is_a?(Hash)
      site.data['socials'] = order.each_with_object({}) do |key, h|
        h[key] = socials[key] if socials.key?(key)
      end
    end
  end
end
