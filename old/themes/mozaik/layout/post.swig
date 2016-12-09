<div class="strata_out sub-header">
    <div class="strata">
        <div class="strata_in">
            <h1 class="page-title">{{ page.title }}</h1>
            {% if page.baseline %}
                <div class="page-baseline">{{ page.baseline }}</div>
            {% endif %}
        </div>
    </div>
</div>
<div class="strata_out page_content">
    <div class="strata">
        <div class="strata_in">
            {{ partial('partial/post', { post: page }) }}
        </div>
    </div>
</div>
