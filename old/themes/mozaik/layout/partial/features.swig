<div class="strata_out page_content">
    <div class="strata">
        <div class="strata_in">
            <h2 class="features_title">Features</h2>
            <div class="features">
                {% for feature in site.data.features %}
                    <div class="feature">
                        <div class="feature_pic">
                            <img src="{{ url_for(feature.illustration) }}"/>
                        </div>
                        <h2 class="feature_title">
                            {{ feature.title }}
                        </h2>
                        <div class="feature_desc">
                            {{ markdown(feature.description) }}
                            {% if feature.link %}
                                <a class="feature_more" href="{{ url_for(feature.link) }}">more</a>
                            {% endif %}
                        </div>
                    </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
