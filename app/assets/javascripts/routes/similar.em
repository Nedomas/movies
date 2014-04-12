class App.SimilarRoute extends Em.Route
  model: (params) ->
    @get('session.user')
    # @store.find('movie', params.movie_id)
    # debugger
    # _this = this

#     Em.$.getJSON('/api/v1/similar', movie_id: params.path_id).then (resp) ->
#       _this.store.filter 'movie', {}, (movie) ->
#         resp.path_road.contains(parseInt(item.id))
#       debugger
#
  setupController: (controller, model) ->
    controller.set('seen', model.get('seen'))
    controller.set('next', model.get('next'))
    # potential_similar = model.get('similar') - @get('session.user.seen')
    # debugger
#     controller.set('path', @store.find('path', @get('path_id')))
#     controller.set('no_resources', model.length == 1)
