module LatexTags
  class AbstractBlock < Liquid::Block
    def render(context)
      content = super
      "<div class=\"abstract\"><h2>Abstract</h2>#{content}</div>"
    end
  end

  class TheoremBlock < Liquid::Block
    def render(context)
      "<div class=\"theorem\">#{super}</div>"
    end
  end

  class ProofBlock < Liquid::Block
    def render(context)
      title = @markup.strip
      attr = title.empty? ? "" : " title=\"#{title}\""
      "<div class=\"proof\"#{attr}>#{super}</div>"
    end
  end

  class DefinitionBlock < Liquid::Block
    def render(context)
      "<div class=\"definition\">#{super}</div>"
    end
  end
end

Liquid::Template.register_tag('abstract', LatexTags::AbstractBlock)
Liquid::Template.register_tag('theorem', LatexTags::TheoremBlock)
Liquid::Template.register_tag('proof', LatexTags::ProofBlock)
Liquid::Template.register_tag('definition', LatexTags::DefinitionBlock)