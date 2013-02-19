module SunspotCellJars
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end

      def install_sunspot_cell_jars
        if File.exists?('solr')

          Dir.mkdir("solr/collection1/lib") unless File.exists?("solr/collection1/lib")

          files = %w{apache-mime4j-core-0.7.2.jar
            apache-mime4j-dom-0.7.2.jar
            bcmail-jdk15-1.45.jar
            bcprov-jdk15-1.45.jar
            boilerpipe-1.1.0.jar
            commons-compress-1.4.1.jar
            commons-io-2.1.jar
            dom4j-1.6.1.jar
            fontbox-1.7.0.jar
            httpclient-4.1.3.jar
            httpcore-4.1.4.jar
            httpmime-4.1.3.jar
            icu4j-49.1.jar
            isoparser-1.0-RC-1.jar
            jcl-over-slf4j-1.6.4.jar
            jdom-1.0.jar
            jempbox-1.7.0.jar
            juniversalchardet-1.0.3.jar
            metadata-extractor-2.4.0-beta-1.jar
            netcdf-4.2-min.jar
            pdfbox-1.7.0.jar
            poi-3.8.jar
            poi-ooxml-3.8.jar
            poi-ooxml-schemas-3.8.jar
            poi-scratchpad-3.8.jar
            rome-0.9.jar
            slf4j-api-1.6.4.jar
            slf4j-jdk14-1.6.4.jar
            solr-analysis-extras-4.1.0.jar
            solr-cell-4.1.0.jar
            solr-clustering-4.1.0.jar
            solr-core-4.1.0.jar
            solr-dataimporthandler-4.1.0.jar
            solr-dataimporthandler-extras-4.1.0.jar
            solr-langid-4.1.0.jar
            solr-solrj-4.1.0.jar
            solr-test-framework-4.1.0.jar
            solr-uima-4.1.0.jar
            solr-velocity-4.1.0.jar
            tagsoup-1.2.1.jar
            tika-core-1.2.jar
            tika-parsers-1.2.jar
            vorbis-java-core-0.1.jar
            vorbis-java-tika-0.1.jar
            wstx-asl-3.2.7.jar
            xercesImpl-2.9.1.jar
            xmlbeans-2.3.0.jar
            xz-1.0.jar
            zookeeper-3.4.5.jar}

          files.each do |file|
            copy_file file, "solr/lib/#{file}"
          end
        else
          say "You need to have a solr directory created in your rails root before I can proceed"
        end
      end
    end
  end
end
