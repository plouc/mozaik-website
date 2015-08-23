<div class="features">
    {% for feature in site.data.features %}
        <div class="feature">
            <div class="feature_pic">
                <img src=""/>
            </div>
            <h2 class="feature_title">
                <i class="fa fa-{{ feature.icon }}"></i>
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
