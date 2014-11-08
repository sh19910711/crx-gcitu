gulp    = require "gulp"
coffee  = require "gulp-coffee"
template = require "gulp-template"

gulp.task "manifest.json", ->
  pkg = require "./package.json"
  gulp.src "src/manifest.json"
    .pipe template
      version: pkg["version"]
    .pipe gulp.dest "dist/"

gulp.task "coffee", ->
  gulp.src ["src/**/*.coffee"]
    .pipe coffee()
    .pipe gulp.dest "dist/"

gulp.task "build", [
  "manifest.json"
  "coffee"
]

gulp.task "watch", ->
  gulp.watch(
    [
      "src/manifest.json"
    ]
    [
      "manifest.json"
    ]
  )
  gulp.watch(
    [
      "src/**/*.coffee"
    ]
    [
      "coffee"
    ]
  )

