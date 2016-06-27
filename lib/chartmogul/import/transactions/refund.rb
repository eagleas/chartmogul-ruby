module ChartMogul
  module Import
    module Transactions
      class Refund < APIResource
        set_resource_name 'Refund Transaction'
        set_resource_path '/v1/import/invoices/:invoice_uuid/transactions'

        writeable_attr :type, default: 'refund'
        writeable_attr :date, type: :time
        writeable_attr :result
        writeable_attr :external_id
        writeable_attr :invoice_uuid

        readonly_attr :uuid

        include API::Actions::Create
      end
    end
  end
end
