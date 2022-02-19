module MessageCenter
    class Engine < ::Rails::Engine
    end

    #############################################
    ### configuration defaults are found in:  ###
    ### /config/initializer/message_center.rb ###
    #############################################

    ### User Class / Model name for database
    self.mattr_accessor :user_class

    ### Prefix to add to new tables or columns to distinguish
    ### our data from other data
    self.mattr_accessor :table_data_prefix

    # this function maps the vars from your app into your engine
    def self.setup(&block)
        yield self

        puts %{
            #############################################
            ### configuration defaults are found in:  ###
            ### /config/initializer/message_center.rb ###
            #############################################

        }
    end

end
