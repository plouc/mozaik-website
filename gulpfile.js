'use strict'

const gulp       = require('gulp')
const watch      = require('gulp-watch')
const stylus     = require('gulp-stylus')
const nib        = require('nib')
const concat     = require('gulp-concat')
const uglify     = require('gulp-uglify')
const rename     = require('gulp-rename')
const sourcemaps = require('gulp-sourcemaps')
const path       = require('path')


const srcPath   = 'src'
const destPath  = 'static'

const paths = {
    js:     path.join(srcPath, 'js'),
    styles: path.join(srcPath, 'styles'),
}

gulp.task('js', () => {
    gulp.src(path.join(paths.js, '**/*.js'))
        .pipe(sourcemaps.init())
        .pipe(concat('mozaik.js'))
        .pipe(uglify())
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(path.join(destPath, 'js')))
})


gulp.task('styles', () => {
    gulp.src(path.join(paths.styles, 'mozaik.styl'))
        .pipe(stylus({
            use:           nib(),
            compress:      true,
            'include css': true,
        }))
        .pipe(gulp.dest(path.join(destPath, 'css')))
})

gulp.task('watch', [
    'js',
    'styles',
], () => {
    gulp.watch(path.join(paths.js, '**/*.js'), ['js'])
    gulp.watch(path.join(paths.styles, '**/*.styl'), ['styles'])
})

gulp.task('default', [
    'js',
    'styles',
])
