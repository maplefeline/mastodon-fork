# frozen_string_literal: true

class ReportWorker
  include Sidekiq::Worker

  def perform(source_account, target_account, options = {})
    ReportService.new.call(source_account, target_account, options)
  end
end
