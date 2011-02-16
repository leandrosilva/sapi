module SAPI
  module Logger
    def logger
      @logger ||= create_logger_from(settings.logger_config)
    end
    
    private

    def create_logger_from(config={})
      logger = ::Logger.new(
        config[:file_name],
        config[:max_old_files],
        config[:max_file_size]
      )
      logger.level = config[:level]
      logger.datetime_format = "%Y-%m-%d %H:%M:%S"
      logger
    end
  end
end
