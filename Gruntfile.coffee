module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-bower-task'

  grunt.registerTask 'default', ['concat']

  grunt.initConfig
    bower:
      install: {}
      options:
        copy: false
    concat:
      "bacon-bacon.model":
        files:
          "./builds/bacon-with-model.js": ["./bower_components/bacon/dist/Bacon.js", "./bower_components/bacon.model/dist/bacon.model.js"]
          "./builds/bacon-with-model.min.js": ["./bower_components/bacon/dist/Bacon.min.js", "./bower_components/bacon.model/dist/bacon.model.min.js"]

      "jquery-bacon.jquery":
        files:
          "./builds/jquery-bacon-with-bjq.js": [
            "./bower_components/jquery/jquery.js"
            "./bower_components/bacon/dist/Bacon.js"
            "./bower_components/bacon.model/dist/bacon.model.js"
            "./bower_components/bacon.jquery/dist/bacon.jquery.js"
          ]
          "./builds/jquery-bacon-with-bjq.min.js": [
            "./bower_components/jquery/jquery.min.js"
            "./bower_components/bacon/dist/Bacon.min.js"
            "./bower_components/bacon.model/dist/bacon.model.min.js"
            "./bower_components/bacon.jquery/dist/bacon.jquery.min.js"
          ]
      
      

      
