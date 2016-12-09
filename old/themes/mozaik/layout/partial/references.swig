<div class="strata_out references">
    <div class="strata">
        <div class="strata_in">
            <h2 class="references_title">Who's using it</h2>
            <div class="references_wrapper">
                {% for reference in site.data.references %}
                    <a class="references_item" href="{{ reference.link }}" title="{{ reference.label }}">
                        <img src="{{ url_for('images/' + reference.image) }}" alt="{{ reference.label }}"/>
                    </a>
                {% endfor %}
            </div>
        </div>
    </div>
</div>