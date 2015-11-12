
var
  hsl $ require :hsl
  React $ require :react

var
  iconChrome $ require :../../images/chrome.png
  iconSublime $ require :../../images/sublime.png
  iconIterm2 $ require :../../images/iterm2.png
  iconSkype $ require :../../images/skype.png

var
  ({}~ div span img) React.DOM

= module.exports $ React.createClass $ {}
  :displayName :app-menu

  :propTypes $ {}
    :index React.PropTypes.number.isRequired

  :render $ \ ()
    div ({} (:style $ @styleRoot))
      div
        {} (:style $ @styleLine $ is @props.index 0)
        img $ {} (:src iconChrome) (:style $ @styleIcon)
        span ({} (:style $ @styleWindowTitle)) ":A Webpage"
      div
        {} (:style $ @styleLine $ is @props.index 1)
        img $ {} (:src iconSkype) (:style $ @styleIcon)
        span ({} (:style $ @styleWindowTitle)) ":A Webpage"
      div
        {} (:style $ @styleLine $ is @props.index 2)
        img $ {} (:src iconIterm2) (:style $ @styleIcon)
        span ({} (:style $ @styleWindowTitle)) ":/Users/Chen/repo/"
      div
        {} (:style $ @styleLine $ is @props.index 3)
        img $ {} (:src iconSublime) (:style $ @styleIcon)
        span ({} (:style $ @styleWindowTitle)) ":/Users/Chen/repo/demo/main.cirru"

  :styleRoot $ \ ()
    {}
      :width :700px
      :height :300px
      :background $ hsl 0 0 20 0.9
      :boxShadow $ + ":0 0 4px " $ hsl 0 0 60
      :display :flex
      :flexDirection :column
      :justifyContent :center
      :alignItems :center

  :styleLine $ \ (active)
    {}
      :lineHeight :50px
      :fontSize :18px
      :fontFamily ":Meiryo, Verdana, Helvatica"
      :color :white
      :width :100%
      :display :flex
      :justifyContent :center
      :alignItems :center
      :backgroundColor $ cond active
        hsl 0 0 0
        hsl 0 0 0 0

  :styleIcon $ \ ()
    {}
      :width 36
      :height 36
      :verticalAlign :middle
      :marginLeft :10px
      :marginRight :10px

  :styleWindowTitle $ \ ()
    {}
      :display :inline-block
      :width :300px
      :fontSize :16px
