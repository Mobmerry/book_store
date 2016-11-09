class BookSerializer < ActiveModel::Serializer
  attributes :author,
             :categories,
             :lastCheckedOut,
             :lastCheckedOutBy,
             :publisher,
             :title,
             :url
  def url
    Rails.application.routes.url_helpers.api_v1_book_path(object)
  end

  def lastCheckedOut
    object.lastCheckedOut.strftime('%Y-%m-%d %H:%M:%S %z') if object.lastCheckedOut.present?
  end
end
