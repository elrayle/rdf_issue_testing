require 'rdf'
require 'linkeddata'

class Issue353
  def self.test

    ### TO RUN:
    ###   rails c
    ###   require 'issue353'
    ###   Issue353.test

binding.pry
# WHEN RUN HERE
# break lib/rdf/reader.rb:189
# c
# self  # RDF::TriX::Reader  when accessed via QA - NOT sure why TriX was setup as the reader
# self.format  # returns RDF::TriX::Format when accessed via QA

# break lib/rdf/util/file.rb:330
# remote_document.string # has the expected content from the remote file

# break lib/rdf/reader.rb:195
# options # {:base_uri=>"http://id.worldcat.org/fast/530369/rdf.xml", :headers=>{"Accept"=>"application/trix, */*;q=0.1"}}
# ## NOT sure why accept type is trix
# file.content_type # "application/rdf+xml"  ## which is the expected content type

# break lib/rdf/reader.rb:215
# ## attempts to read rdf.xml with TriX reader


    graph = RDF::Graph.load('http://id.worldcat.org/fast/530369/rdf.xml')
    graph.size  # expect > 0
  end
end
