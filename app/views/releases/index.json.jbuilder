json.array!(@releases) do |release|
  json.extract! release, :id, :name, :scope_id, :pillar_id
  json.url release_url(release, format: :json)
end
