<!-- Scripts -->
<!-- build:js build/js/main.js -->
{{ js('js/jquery-2.1.4.js') }}
{{ js('js/jquery.waypoints.js') }}
{{ js('js/sticky.js') }}
{{ js('js/inview.js') }}
{{ js('js/slick.min.js') }}
{{ js('js/toc') }}
{{ js('js/mobile_nav') }}
{{ js('js/mozaik') }}
<!-- endbuild -->
<!-- <script src="//cdn.jsdelivr.net/retinajs/1.1.0/retina.min.js" async></script> -->
{% if page.layout === 'extensions' %}
  <!-- Plugin search -->
  <script src="//cdn.jsdelivr.net/lunr/0.5.7/lunr.min.js"></script>
  <!-- build:js build/js/plugins.js -->
  {{ js('js/plugins') }}
  <!-- endbuild -->
{% endif %}
