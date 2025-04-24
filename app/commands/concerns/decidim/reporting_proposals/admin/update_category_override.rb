# frozen_string_literal: true

module Decidim
  module ReportingProposals
    module Admin
      module UpdateCategoryOverride
        extend ActiveSupport::Concern

        included do
          def run_after_hooks
            update_valuators
          end

          private

          def update_valuators
            resource.category_valuators.destroy_all
            resource.participatory_space.user_roles.where(id: form.valuator_ids).each do |valuator|
              Decidim::ReportingProposals::CategoryValuator.create!(category: resource, valuator_role: valuator)
            end
          end
        end
      end
    end
  end
end
