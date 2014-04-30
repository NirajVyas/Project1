# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ()->
  $('.song').on 'click', ()->
    title = $(this).data 'title'
    # url = $(this).data 'filename'
    url = "http://www.buymixtapes.com/members/mixtapes/dj_clue-clue_tv/04%20Juelz%20Santana%20Ft%20Skull%20Gang-Skull%20Gang%20Got%20Money.mp3"
    console.log(url);
    SCM.queue({ title: title, url: url });
