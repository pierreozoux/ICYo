BaseView = require '../lib/base_view'

module.exports = class AppView extends BaseView

    el: 'body.application'
    template: require('./templates/home')

    afterRender: ->
        options = 
            localVideoEl: 'localVideo'
            remoteVideosEl: 'remotesVideos'
            autoRequestMedia: true
        webrtc = new SimpleWebRTC options
      
        webrtc.on 'readyToCall', ->
            webrtc.joinRoom 'your awesome room name'