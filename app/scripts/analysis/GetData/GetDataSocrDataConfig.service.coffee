'use strict'

BaseModuleDataService = require 'scripts/BaseClasses/BaseModuleDataService.coffee'

module.exports = class GetDataSocrDataConfig extends BaseModuleDataService

  initialize: () ->

    @socrDatasets = [
      name: 'Iris Flower Dataset'
      url: 'datasets/iris.csv'
      description: 'http://wiki.socr.umich.edu/index.php/SOCR_Data_052511_IrisSepalPetalClasses'
    ,
      name: 'Simulated SOCR Knee Pain Centroid Location Data'
      url: 'datasets/knee_pain_data.csv'
      description: 'http://wiki.socr.umich.edu/index.php/SOCR_Data_KneePainData_041409'
    ,
      name: 'Neuroimaging study of 27 of Global Cortical Surface Curvedness (27 AD, 35 NC and 42 MCI)'
      url: 'datasets/Global_Cortical_Surface_Curvedness_AD_NC_MCI.csv'
      description: 'http://wiki.socr.umich.edu/index.php/SOCR_Data_July2009_ID_NI'
    ,
      name: 'Neuroimaging study of Prefrontal Cortex Volume across Species'
      url: 'datasets/Prefrontal_Cortex_Volume_across_Species.csv'
      description: 'http://wiki.socr.umich.edu/index.php/SOCR_Data_April2009_ID_NI'
    ,
      name: 'Turkiye Student Evaluation Data Set'
      url: 'datasets/Turkiye_Student_Evaluation_Data_Set.csv'
      description: 'http://wiki.socr.umich.edu/index.php/SOCR_TurkiyeStudentEvalData'
    ]

  getNames: -> @socrDatasets.map (dataset) ->
    id: dataset.name.toLowerCase()
    name: dataset.name
    desc: dataset.description

  getUrlByName: (datasetId) ->
      (dataset.url for dataset in @socrDatasets when datasetId is dataset.name.toLowerCase()).shift()