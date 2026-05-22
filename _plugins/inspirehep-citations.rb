# Stub: bib.liquid references {% inspirehep_citations %} unconditionally at
# parse time. Our config sets enable_publication_badges.inspirehep=false and
# no bib entries have inspirehep_id, so the tag never actually renders, but
# the parser still needs the name registered. The real plugin pulls in
# active_support, which isn't worth adding to the Gemfile for a feature we
# don't use.
module Jekyll
  class InspireHEPCitationsTag < Liquid::Tag
    def initialize(tag_name, params, tokens)
      super
    end

    def render(_context)
      ""
    end
  end
end

Liquid::Template.register_tag('inspirehep_citations', Jekyll::InspireHEPCitationsTag)
