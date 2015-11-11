
var
  stir $ require :stir-template
  ({}~ html head title meta link script body div) stir

var style $ stir.createFactory :style

= module.exports $ \ (data)
  stir.render
    stir.doctype
    html null
      head null
        title null :Witch
        meta $ {} (:charset :utf-8)
        link $ {} (:rel :icon)
          :href :http://logo.cirru.org/cirru-32x32.png
        cond (not data.dev)
          link $ {} (:rel :stylesheet) (:href data.style)
        script $ {} (:src data.vendor) (:defer true)
        script $ {} (:src data.main) (:defer true)
        style null ":body * {box-sizing: border-box;}"
      body ({} (:style ":margin: 0;"))
        div ({} (:id :app))
