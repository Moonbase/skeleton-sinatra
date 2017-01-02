var gulp        = require('gulp');
var sass        = require('gulp-sass');
var uglify      = require('gulp-uglify');
var sourcemaps  = require('gulp-sourcemaps');
var browserify  = require('browserify');
var babelify    = require('babelify');
var source      = require('vinyl-source-stream');
var buffer      = require('vinyl-buffer');

gulp.task('compile:stylesheets', function() {
  return gulp.src('app/assets/stylesheets/app.scss')
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('./public/assets/stylesheets'));
});

gulp.task('compile:javascript', function() {
  return browserify({
    entries: 'app/assets/javascript/app.js'
  }).transform(babelify, {
    presets: ['latest']
  }).bundle()
    .pipe(source('app.js'))
    .pipe(buffer())
    .pipe(sourcemaps.init({ loadMaps: true }))
		.pipe(uglify())
    .pipe(sourcemaps.write())
		.pipe(gulp.dest('./public/assets/javascript'));
});

gulp.task('compile:images', function() {
  return gulp.src('app/assets/images/**/*')
    .pipe(gulp.dest('./public/assets/images'));
});

gulp.task('build', ['compile:stylesheets', 'compile:javascript', 'compile:images']);

gulp.task('watch', ['build'], function() {
	gulp.watch('app/assets/**/*', ['build']);
});
