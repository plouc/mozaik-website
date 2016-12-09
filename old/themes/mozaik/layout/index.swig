<div class="strata_out sub-header index_banner">
    <div class="strata">
        <div class="strata_in">
            {% spaceless %}
                <p class="index_banner_intro">
                    Mozaïk is a tool based on nodejs / react / d3 / stylus to easily craft beautiful dashboards.
                </p>
                <div id="intro-get-started-wrap">
                    <a class="index_banner_link" href="http://mozaik.herokuapp.com/" target="_blank">demo</a>
                    <a class="index_banner_link" href="{{ url_for('usage') }}">get started</a>
                </div>
            {% endspaceless %}
            <!--
            <h2 id="banner-title">{{ page.subtitle }}</h2>
            -->
        </div>
    </div>
</div>
{{ partial('partial/share') }}
{{ partial('partial/features') }}
{{ partial('partial/references') }}
{{ partial('partial/use_cases') }}
