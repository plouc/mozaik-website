<div class="sub-header">
    <div class="wrapper">
        <h1 class="page-title">{{ page.title }}</h1>
        {% if page.baseline %}
            <div class="page-baseline">{{ page.baseline }}</div>
        {% endif %}
    </div>
</div>
<div id="content-wrap">
    <div id="content" class="wrapper">
      <div class="themes_intro">
          <strong>Mozaïk</strong> dashboard comes with 5 themes and makes it easy to develop your own theme.<br/>
          Below is a gallery of provided themes.
      </div>
        <div class="themes">
            {% for theme in site.data.themes %}
                <div class="theme">
                    <h2 class="theme_name">{{ theme.name }}</h2>
                    <img src="{{ url_for('themes/screenshots/' + theme.screenshot) }}"/>
                </div>
            {% endfor %}
        </div>
    </div>
</div>
