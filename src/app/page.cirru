
var
  hsl $ require :hsl
  React $ require :react

var bg $ require :../../images/desktop.jpg

var
  Menu $ React.createFactory $ require :./menu

var
  ({}~ div) React.DOM

= module.exports $ React.createClass $ {}
  :displayName :app-page

  :render $ \ ()
    div ({} (:style $ @styleRoot))
      Menu

  :styleRoot $ \ ()
    {}
      :backgroundColor $ hsl 0 10 90
      :position :absolute
      :width :100%
      :height :100%
      :left 0
      :top 0
      :backgroundImage $ + ":url(" bg ":)"
      :backgroundSize :cover
      :display :flex
      :justifyContent :center
      :alignItems :center
