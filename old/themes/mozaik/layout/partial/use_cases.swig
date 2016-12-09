<div class="strata_out use-cases">
    <div class="strata">
        <div class="strata_in">
            <h2 class="use-cases_title">Use cases</h2>
            {% for use_case in site.data.use_cases %}
                <a class="use-cases_item" href="{{ use_case.link }}">
                    {{ use_case.title }}
                </a>
            {% endfor %}
        </div>
    </div>
</div>