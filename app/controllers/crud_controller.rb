class CrudController < InheritedResources::Base
  has_scope :page, default: 1
  has_scope :per,  default: 9999

  include InheritedResources::DSL

  create!(notice: I18n.t("create_success")) { collection_url }
  update!(notice: I18n.t("create_success")) { collection_url }
  destroy!(notice: I18n.t("destroy_success")) { collection_url }
end
