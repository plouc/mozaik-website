'use strict';
var gulp    = require('gulp');
var $       = require('gulp-load-plugins')();
var cssnano = require('cssnano');


gulp.task('default', function () {
    var assets = $.useref.assets({
        searchPath: 'public'
    });

    return gulp.src('public/**/*.html')
        .pipe(assets)
        .pipe($.uniqueFiles())
        .pipe($.if('*.css', $.postcss([
            cssnano()
        ])))
        .pipe($.if('*.js', $.uglify()))
        .pipe($.rev())
        .pipe(assets.restore())
        .pipe($.useref())
        .pipe($.revReplace({
            prefix: '/'
        }))
        .pipe(gulp.dest('public'))
    ;
});
