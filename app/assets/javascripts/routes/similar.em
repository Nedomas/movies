class App.SimilarRoute extends Em.Route
  model: (params) ->
    _this = this

#     Em.$.getJSON('/api/v1/similar', movie_id: params.path_id).then (resp) ->
#       _this.store.filter 'movie', {}, (movie) ->
#         resp.path_road.contains(parseInt(item.id))
#       debugger
#
#   setupController: (controller, model) ->
#     controller.set('model', model)
#     controller.set('path', @store.find('path', @get('path_id')))
#     controller.set('no_resources', model.length == 1)
