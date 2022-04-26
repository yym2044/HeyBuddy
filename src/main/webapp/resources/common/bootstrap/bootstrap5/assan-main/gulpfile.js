
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
var autoprefixer = require('autoprefixer');
var postcss = require('gulp-postcss');
var cssnano = require('gulp-cssnano');
var del = require('del');
var glob = require('glob');
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
            dest: './public'
        },
        html: {
            dir: './html/*.html',
            files: './html/**/*.html',
            dest: './public',
            cleanHtml: './public/*.html',
        },
        js: {
            dir: './js',
            files: './js/custom/**/*.js',
            theme: './js/theme.js',
            dest: './public/assets/js',
            clean: './public/assets/js/*.js',
        },
        scss: {
            dir: './scss',
            files: './scss/**/*',
            main: './scss/*.scss',
            dest: './public/assets/css'
        },
        vendor: {
            files: [
                "./node_modules/jquery/dist/jquery.min.js",
                "./node_modules/jquery-countdown/dist/jquery.countdown.min.js",
                "./node_modules/gsap/dist/gsap.min.js",
                "./node_modules/swiper/swiper-bundle.min.js",
                "./node_modules/splitting/dist/splitting.min.js",
                "./node_modules/locomotive-scroll/dist/locomotive-scroll.min.js",
                "./node_modules/flatpickr/dist/flatpickr.min.js",
                "./node_modules/quill/dist/quill.min.js",
                "./node_modules/cleave.js/dist/cleave.min.js",
                "./node_modules/simplebar/dist/simplebar.min.js",
                "./node_modules/particles.js/particles.js",
                "./node_modules/prismjs/prism.js",
                "./node_modules/clipboard/dist/clipboard.min.js",
                "./node_modules/nouislider/dist/nouislider.min.js",
                "./node_modules/choices.js/public/assets/scripts/choices.min.js",
                "./node_modules/dropzone/dist/dropzone-min.js",
            ],
            css: [
                "./node_modules/swiper/swiper-bundle.min.css",
                "./node_modules/nouislider/dist/nouislider.min.css",
                "./node_modules/splitting/dist/splitting.css",
                "./node_modules/splitting/dist/splitting-cells.css",
                "./node_modules/aos/dist/aos.css",
                "./node_modules/locomotive-scroll/dist/locomotive-scroll.min.css",
                "./node_modules/flatpickr/dist/flatpickr.min.css",
                "./node_modules/quill/dist/quill.snow.css",
                "./node_modules/simplebar/dist/simplebar.min.css",
                "./node_modules/prismjs/themes/prism-tomorrow.css",
                "./node_modules/choices.js/public/assets/styles/choices.min.css",
                "./node_modules/dropzone/dist/dropzone.css",
            ],
            dest: './public/assets/vendor/node_modules/js',
            destCss: './public/assets/vendor/node_modules/css',
            clean: './public/assets/vendor/node_modules'
        }
    }
};
//Clean public folder html,css,js
function cleanUp() {
    return del([paths.src.js.clean,paths.src.vendor.clean, paths.src.scss.dest, paths.src.html.cleanHtml]);
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

//BrowserSync
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
        .pipe(postcss([ autoprefixer() ]))
        .pipe(sourcemaps.write(paths.here))
        .pipe(dest(paths.src.scss.dest))
        .pipe(browsersync.stream());
};
function minifyCss() {
    return src(paths.src.scss.main)
        .pipe(sourcemaps.init())
        .pipe(sass.sync().on('error', sass.logError))
        .pipe(postcss([ autoprefixer() ]))
        .pipe(cssnano())
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
function watchFiles() {
    watch(paths.src.scss.files, series(buildCss, minifyCss));
    watch(paths.src.js.files, series(bundleJs, browsersyncReload));
    watch(paths.src.html.files, series(html, browsersyncReload));
};

exports.watchFiles = watch;
exports.buildCss = buildCss;
exports.bundleJs = bundleJs;
exports.minifyCss = minifyCss;
exports.html = html;
exports.copyVendor = copyVendor;
exports.copyVendorCss = copyVendorCss;
exports.cleanUp = cleanUp;
exports.default = series(cleanUp, html, buildCss, minifyCss, copyVendor, copyVendorCss, bundleJs, parallel(browserSync, watchFiles));
