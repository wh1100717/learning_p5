"use strict"

module.exports = (grunt) ->
    require('time-grunt')(grunt)
    require('load-grunt-tasks')(grunt)

    grunt.initConfig {
        watch: {
            livereload: {
                options: {
                    livereload: '<%= connect.options.livereload %>'
                }
                files: [
                    'demos/**/*'
                ]
            }
        }
        connect: {
            options: {
                port: 9008
                open: true
                livereload: 35729
                hostname: 'localhost'
            }
            livereload: {
            }
        }
    }
    grunt.registerTask 'default', [
        'connect:livereload'
        'watch'
    ]