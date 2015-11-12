
var
  hsl $ require :hsl
  React $ require :react
  keycode $ require :keycode

var bg $ require :../../images/desktop.jpg

var
  Menu $ React.createFactory $ require :./menu

var
  ({}~ div) React.DOM

= module.exports $ React.createClass $ {}
  :displayName :app-page

  :getInitialState $ \ ()
    {}
      :showMenu false
      :index 0

  :componentDidMount $ \ ()
    window.addEventListener :keydown @onWindowKeydown
    window.addEventListener :keyup @onWindowKeyup

  :componentWillUnmount $ \ ()
    window.removeEventListener :keydown @onWindowKeydown
    window.removeEventListener :keyup @onWindowKeyup

  :triggerAction $ \ ()
    @setState $ {}
      :showMenu true
      :index $ cond (>= @state.index 3) 0
        + @state.index 1

  :resetMenu $ \ ()
    @setState $ {}
      :showMenu false
      :index 0

  :onWindowKeydown $ \ (event)
    if
      and event.altKey (is (keycode event.keyCode) :q)
      do
        @triggerAction
    , undefined

  :onWindowKeyup $ \ (event)
    if
      is (keycode event.keyCode) :alt
      do
        @resetMenu
    , undefined

  :render $ \ ()
    div ({} (:style $ @styleRoot))
      cond @state.showMenu
        Menu $ {} (:index @state.index)
      div ({} (:style $ @styleTip))
        , ":Press `Option Q` or `Alt Q` to try"

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

  :styleTip $ \ ()
    {}
      :backgroundColor $ hsl 0 0 100
      :color $ hsl 0 0 0
      :position :absolute
      :top :500px
      :left :70px
      :width :400px
      :height :120px
      :padding :20px
      :boxShadow $ + ":0 0 40px " $ hsl 0 0 0
      :fontFamily ":Meiryo, Verdana, Helvetica"
      :fontWeight :bold
