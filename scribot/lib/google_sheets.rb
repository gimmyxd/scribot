# frozen_string_literal: true

require 'google_drive'

module ScriBot
  module Lib
    module GoogleSheets
      def self.read_cells
        session = GoogleDrive::Session.from_config('config.json')
        sheet = session.spreadsheet_by_key(
          'sheet_id'
        ).worksheets[0]
        sheet.rows.join
      end
    end
  end
end
