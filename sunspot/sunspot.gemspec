# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "sunspot/version"

Gem::Specification.new do |s|
  s.name        = "sunspot"
  s.version     = Sunspot::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Mat Brown', 'Peer Allan', 'Dmitriy Dzema', 'Benjamin Krause', 'Marcel de Graaf', 'Brandon Keepers', 'Peter Berkenbosch',
                  'Brian Atkinson', 'Tom Coleman', 'Matt Mitchell', 'Nathan Beyer', 'Kieran Topping', 'Nicolas Braem', 'Jeremy Ashkenas',
                  'Dylan Vaughn', 'Brian Durand', 'Sam Granieri', 'Nick Zadrozny', 'Jason Ronallo']
  s.email       = ["mat@patch.com"]
  s.homepage    = "http://outoftime.github.com/sunspot"
  s.summary = 'Library for expressive, powerful interaction with the Solr search engine'
  s.license = 'MIT'
  s.description = <<-TEXT
    Sunspot is a library providing a powerful, all-ruby API for the Solr search engine. Sunspot manages the configuration of persistent
    Ruby classes for search and indexing and exposes Solr's most powerful features through a collection of DSLs. Complex search operations
    can be performed without hand-writing any boolean queries or building Solr parameters by hand.
  TEXT

  s.rubyforge_project = "sunspot"

  s.files         = %w[
    .gitignore
    Gemfile
    History.txt
    LICENSE
    Rakefile
    TODO
    lib/light_config.rb
    lib/sunspot.rb
    lib/sunspot/adapters.rb
    lib/sunspot/batcher.rb
    lib/sunspot/class_set.rb
    lib/sunspot/composite_setup.rb
    lib/sunspot/configuration.rb
    lib/sunspot/data_extractor.rb
    lib/sunspot/dsl.rb
    lib/sunspot/dsl/adjustable.rb
    lib/sunspot/dsl/field_group.rb
    lib/sunspot/dsl/field_query.rb
    lib/sunspot/dsl/fields.rb
    lib/sunspot/dsl/fulltext.rb
    lib/sunspot/dsl/function.rb
    lib/sunspot/dsl/functional.rb
    lib/sunspot/dsl/more_like_this_query.rb
    lib/sunspot/dsl/paginatable.rb
    lib/sunspot/dsl/query_facet.rb
    lib/sunspot/dsl/restriction.rb
    lib/sunspot/dsl/restriction_with_near.rb
    lib/sunspot/dsl/scope.rb
    lib/sunspot/dsl/search.rb
    lib/sunspot/dsl/standard_query.rb
    lib/sunspot/field.rb
    lib/sunspot/field_factory.rb
    lib/sunspot/indexer.rb
    lib/sunspot/query.rb
    lib/sunspot/query/abstract_field_facet.rb
    lib/sunspot/query/bbox.rb
    lib/sunspot/query/boost_query.rb
    lib/sunspot/query/common_query.rb
    lib/sunspot/query/composite_fulltext.rb
    lib/sunspot/query/connective.rb
    lib/sunspot/query/date_field_facet.rb
    lib/sunspot/query/dismax.rb
    lib/sunspot/query/field_facet.rb
    lib/sunspot/query/field_group.rb
    lib/sunspot/query/filter.rb
    lib/sunspot/query/function_query.rb
    lib/sunspot/query/geo.rb
    lib/sunspot/query/geofilt.rb
    lib/sunspot/query/highlighting.rb
    lib/sunspot/query/more_like_this.rb
    lib/sunspot/query/more_like_this_query.rb
    lib/sunspot/query/pagination.rb
    lib/sunspot/query/query_facet.rb
    lib/sunspot/query/range_facet.rb
    lib/sunspot/query/restriction.rb
    lib/sunspot/query/scope.rb
    lib/sunspot/query/sort.rb
    lib/sunspot/query/sort_composite.rb
    lib/sunspot/query/standard_query.rb
    lib/sunspot/query/text_field_boost.rb
    lib/sunspot/schema.rb
    lib/sunspot/search.rb
    lib/sunspot/search/abstract_search.rb
    lib/sunspot/search/date_facet.rb
    lib/sunspot/search/facet_row.rb
    lib/sunspot/search/field_facet.rb
    lib/sunspot/search/field_group.rb
    lib/sunspot/search/group.rb
    lib/sunspot/search/highlight.rb
    lib/sunspot/search/hit.rb
    lib/sunspot/search/hit_enumerable.rb
    lib/sunspot/search/more_like_this_search.rb
    lib/sunspot/search/paginated_collection.rb
    lib/sunspot/search/query_facet.rb
    lib/sunspot/search/range_facet.rb
    lib/sunspot/search/standard_search.rb
    lib/sunspot/session.rb
    lib/sunspot/session_proxy.rb
    lib/sunspot/session_proxy/abstract_session_proxy.rb
    lib/sunspot/session_proxy/class_sharding_session_proxy.rb
    lib/sunspot/session_proxy/id_sharding_session_proxy.rb
    lib/sunspot/session_proxy/master_slave_session_proxy.rb
    lib/sunspot/session_proxy/retry_5xx_session_proxy.rb
    lib/sunspot/session_proxy/sharding_session_proxy.rb
    lib/sunspot/session_proxy/silent_fail_session_proxy.rb
    lib/sunspot/session_proxy/thread_local_session_proxy.rb
    lib/sunspot/setup.rb
    lib/sunspot/text_field_setup.rb
    lib/sunspot/type.rb
    lib/sunspot/util.rb
    lib/sunspot/version.rb
    log/.gitignore
    pkg/.gitignore
    script/console
    spec/api/adapters_spec.rb
    spec/api/batcher_spec.rb
    spec/api/binding_spec.rb
    spec/api/class_set_spec.rb
    spec/api/hit_enumerable_spec.rb
    spec/api/indexer/attributes_spec.rb
    spec/api/indexer/batch_spec.rb
    spec/api/indexer/dynamic_fields_spec.rb
    spec/api/indexer/fixed_fields_spec.rb
    spec/api/indexer/fulltext_spec.rb
    spec/api/indexer/removal_spec.rb
    spec/api/indexer/spec_helper.rb
    spec/api/indexer_spec.rb
    spec/api/query/advanced_manipulation_examples.rb
    spec/api/query/connectives_examples.rb
    spec/api/query/dsl_spec.rb
    spec/api/query/dynamic_fields_examples.rb
    spec/api/query/faceting_examples.rb
    spec/api/query/fulltext_examples.rb
    spec/api/query/function_spec.rb
    spec/api/query/geo_examples.rb
    spec/api/query/group_spec.rb
    spec/api/query/highlighting_examples.rb
    spec/api/query/more_like_this_spec.rb
    spec/api/query/ordering_pagination_examples.rb
    spec/api/query/scope_examples.rb
    spec/api/query/spatial_examples.rb
    spec/api/query/spec_helper.rb
    spec/api/query/standard_spec.rb
    spec/api/query/text_field_scoping_examples.rb
    spec/api/query/types_spec.rb
    spec/api/search/dynamic_fields_spec.rb
    spec/api/search/faceting_spec.rb
    spec/api/search/highlighting_spec.rb
    spec/api/search/hits_spec.rb
    spec/api/search/paginated_collection_spec.rb
    spec/api/search/results_spec.rb
    spec/api/search/search_spec.rb
    spec/api/search/spec_helper.rb
    spec/api/session_proxy/class_sharding_session_proxy_spec.rb
    spec/api/session_proxy/id_sharding_session_proxy_spec.rb
    spec/api/session_proxy/master_slave_session_proxy_spec.rb
    spec/api/session_proxy/retry_5xx_session_proxy_spec.rb
    spec/api/session_proxy/sharding_session_proxy_spec.rb
    spec/api/session_proxy/silent_fail_session_proxy_spec.rb
    spec/api/session_proxy/spec_helper.rb
    spec/api/session_proxy/thread_local_session_proxy_spec.rb
    spec/api/session_spec.rb
    spec/api/spec_helper.rb
    spec/api/sunspot_spec.rb
    spec/ext.rb
    spec/helpers/indexer_helper.rb
    spec/helpers/integration_helper.rb
    spec/helpers/mock_session_helper.rb
    spec/helpers/query_helper.rb
    spec/helpers/search_helper.rb
    spec/integration/dynamic_fields_spec.rb
    spec/integration/faceting_spec.rb
    spec/integration/field_grouping_spec.rb
    spec/integration/geospatial_spec.rb
    spec/integration/highlighting_spec.rb
    spec/integration/indexing_spec.rb
    spec/integration/keyword_search_spec.rb
    spec/integration/local_search_spec.rb
    spec/integration/more_like_this_spec.rb
    spec/integration/scoped_search_spec.rb
    spec/integration/stored_fields_spec.rb
    spec/integration/test_pagination.rb
    spec/integration/unicode_spec.rb
    spec/mocks/adapters.rb
    spec/mocks/blog.rb
    spec/mocks/comment.rb
    spec/mocks/connection.rb
    spec/mocks/mock_adapter.rb
    spec/mocks/mock_class_sharding_session_proxy.rb
    spec/mocks/mock_record.rb
    spec/mocks/mock_sharding_session_proxy.rb
    spec/mocks/photo.rb
    spec/mocks/post.rb
    spec/mocks/super_class.rb
    spec/mocks/user.rb
    spec/spec_helper.rb
    sunspot.gemspec
    tasks/rdoc.rake
    tasks/schema.rake
    tasks/todo.rake
  ]
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]

  s.add_dependency 'rsolr', '~>1.0.7'
  s.add_dependency 'pr_geohash', '~>1.0'

  s.add_development_dependency 'rspec', '~>2.6.0'
  s.add_development_dependency 'hanna'

  s.rdoc_options << '--webcvs=http://github.com/outoftime/sunspot/tree/master/%s' <<
                  '--title' << 'Sunspot - Solr-powered search for Ruby objects - API Documentation' <<
                  '--main' << 'README.rdoc'
end
