
'use strict';
var { src, dest, series, parallel, watch } = require('gulp');
var browserify = require('browserify');
var babelify = require('babelify');
var source = require('vinyl-source-stream');
var buffer = require('vinyl-buffer');
var sass = require('gulp-sass')(require('sass'));
var rename = require('gulp-rename');
var sourcemaps = require('gulp-sourcemaps');
var browsersync = require('browser-sync').create();
var uglify = require('gulp-uglify');
var cleanCSS = require('gulp-clean-css');
var del = require('del');
var glob = require('glob');
var autoprefixer = require('gulp-autoprefixer');
var fileinclude = require('gulp-file-include');
// Define paths
var paths = {
    here: './',
    base: {
        base: {
            dest: './'
        },
        node: {
            dest: './node_modules'
        }
    },
    src: {
        base: {
            dir: './',
            files: './**/*',
            dest: './app'
        },
        html: {
            dir: './html/*.html',
            files: './html/**/*.html',
            dest: './app',
        },
        js: {
            dir: './js',
            files: './js/custom/**/*.js',
            theme: './js/theme.js',
            dest: './app/assets/js'
        },
        scss: {
            dir: './scss',
            files: './scss/**/*',
            main: './scss/*.scss',
            dest: './app/assets/css'
        },
        vendor: {
            files: [
                "./node_modules/feather-icons/dist/feather.min.js",
                "./node_modules/quill/dist/quill.min.js",
                "./node_modules/chart.js/dist/chart.min.js",
                "./node_modules/chartjs-plugin-datalabels/dist/chartjs-plugin-datalabels.min.js",
                "./node_modules/list.js/dist/list.min.js",
                "./node_modules/daterangepicker/moment.min.js",
                "./node_modules/daterangepicker/daterangepicker.js",
                "./node_modules/dragula/dist/dragula.min.js",
                "./node_modules/inputmask/dist/inputmask.min.js",
                "./node_modules/datatables.net/js/jquery.dataTables.min.js",
                "./node_modules/bs-stepper/dist/js/bs-stepper.min.js",
                "./node_modules/jquery-validation/dist/jquery.validate.min.js",
                "./node_modules/dropzone/dist/min/dropzone.min.js",
                "./node_modules/swiper/swiper-bundle.min.js",
            ],
            css: [
                "./node_modules/daterangepicker/daterangepicker.css",
                "./node_modules/quill/dist/quill.snow.css",
                "./node_modules/quill/dist/quill.bubble.css",
                "./node_modules/simplebar/dist/simplebar.min.css",
                "./node_modules/choices.js/public/assets/styles/choices.min.css",
                "./node_modules/dragula/dist/dragula.min.css",
                "./node_modules/bs-stepper/dist/css/bs-stepper.min.css",
                "./node_modules/datatables.net-dt/css/jquery.dataTables.min.css",
                "./node_modules/dropzone/dist/min/dropzone.min.css",
                "./node_modules/swiper/swiper-bundle.min.css",
            ],
            dest: './app/assets/vendor',
            destCss: './app/assets/vendor/css'
        }
    }
};

function browserSync(done) {
    browsersync.init({
        server: {
            baseDir: [paths.src.base.dest]
        },
    });
    done();
};

function browsersyncReload(done) {
    browsersync.reload();
    done();
};

//Copy vendor to assets/vendor folder

function copyVendor() {
    return src(paths.src.vendor.files)
        .pipe(dest(paths.src.vendor.dest))
        .pipe(browsersync.stream());
}
function copyVendorCss() {
    return src(paths.src.vendor.css)
        .pipe(dest(paths.src.vendor.destCss))
        .pipe(browsersync.stream());
}
function bundleJs() {
    var files = glob.sync('./js/theme.js');
    return (
        browserify({
            entries: files,
            debug: true,
            cache: {},
            packageCache: {}
        }).transform(babelify, {
            global: true,
            presets: ["@babel/preset-env"]
        })
            .bundle()
            .pipe(source('theme.bundle.js'))
            .pipe(buffer())
            .pipe(sourcemaps.init())
            .pipe(uglify())
            .pipe(sourcemaps.write(paths.here))
            .pipe(dest(paths.src.js.dest))
    );
};
//styles
function buildCss() {
    return src(paths.src.scss.main)
        .pipe(sourcemaps.init())
        .pipe(sass.sync().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(sourcemaps.write(paths.here))
        .pipe(dest(paths.src.scss.dest))
        .pipe(browsersync.stream());
};

function minifyCss() {
    return src(paths.src.scss.main)
        .pipe(sourcemaps.init())
        .pipe(sass.sync().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(cleanCSS())
        .pipe(rename({
            suffix: '.min'
        }))
        .pipe(sourcemaps.write(paths.here))
        .pipe(dest(paths.src.scss.dest))
        .pipe(browsersync.stream());
};

//Copy html
function html() {
    return src(paths.src.html.dir)
        .pipe(fileinclude({
            prefix: '@@',
            basepath: '@file',
            indent: true
        }))
        .pipe(dest(paths.src.html.dest))
        .pipe(browsersync.reload({
            stream: true
        }));
};

function cleanUp() {
    return del([paths.src.js.dest, paths.src.scss.dest]);
};
function watchFiles() {
    watch(paths.src.scss.files, series(buildCss, minifyCss));
    watch(paths.src.js.files, series(bundleJs, browsersyncReload));
    watch(paths.src.html.files, series(html, browsersyncReload));
};

exports.watchFiles = watch;
exports.buildCss = buildCss;
exports.bundleJs = bundleJs;
exports.minifyCss = minifyCss;
exports.copyVendor = copyVendor;
exports.copyVendorCss = copyVendorCss;
exports.html = html;
exports.default = series(cleanUp, html, buildCss, minifyCss, bundleJs, copyVendor, copyVendorCss, parallel(browserSync, watchFiles));
