 require './lib/rdf_vocabularies/unc_terms.rb'
 
 module Unclib
   module Metadata
     extend ActiveSupport::Concern
     
    included do
      
      property :alternative, predicate: ::RDF::DC.alternative do |index|
        index.as :stored_searchable, :facetable
      end
      property :available, predicate: ::RDF::DC.available do |index|
        index.as :stored_searchable
      end
      property :dissertant, predicate: ::RDF::Vocab::MARCRelators.dis, multiple: false do |index|
        index.as :stored_searchable
      end
      property :advisor, predicate: ::RDF::Vocab::MARCRelators.ths do |index|
        index.as :stored_searchable
      end
      property :committee_member, predicate: ::UNCTerms.thesiscommitteemember do |index|
        index.as :stored_searchable
      end
      property :degree_grantor, predicate: ::RDF::DC.publisher do |index|
        index.as :stored_searchable
      end
      property :department, predicate: ::RDF::URI.new("http://unc.edu/ns/department"), multiple: false do |index|
        index.as :stored_searchable, :facetable
      end
      property :specialization, predicate: ::UNCTerms.specialization, multiple: false do |index|
        index.as :stored_searchable
      end
      property :date_submitted, predicate: ::RDF::DC.dateSubmitted, multiple: false do |index|
        index.type :date
        index.as :stored_searchable
      end
      property :date_accepted, predicate: ::RDF::DC.dateAccepted, multiple: false do |index|
        index.type :date
        index.as :stored_searchable
      end
      property :graduation_date, predicate: ::UNCTerms.graduationdate, multiple: false do |index|
        index.as :stored_searchable, :facetable
      end
      property :alternative, predicate: ::RDF::DC.alternative do |index|
        index.as :stored_searchable
      end
      property :thesis_name, predicate: ::RDF::DC.audience, multiple: false do |index|
        index.as :stored_searchable
      end
      property :thesis_level, predicate: ::UNCTerms.thesislevel, multiple: false do |index|
        index.as :stored_searchable
      end
      property :proquest, predicate: ::UNCTerms.proquest, multiple: false do |index|
        index.as :stored_searchable
      end
      property :abstract, predicate: ::RDF::DC.abstract, multiple: false do |index|
        index.as :stored_searchable
      end
      property :is_part_of, predicate: ::RDF::DC.isPartOf, multiple: false do |index|
        index.as :stored_searchable
      end
      
     end
   end
end