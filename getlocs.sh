curl "http://contentapi.theodi.org/with_tag.json?type=node" |
jq '{
  type: "FeatureCollection",
  features: [
    .results[] | {
      type: "Feature",
      geometry: {type: "Point", coordinates: [.details.location[1], .details.location[0]]},
      properties: {name: .title}
    }
  ]
}'
