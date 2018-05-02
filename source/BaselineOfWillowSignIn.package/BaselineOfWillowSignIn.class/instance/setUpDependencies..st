baselines
setUpDependencies: spec

	spec
		baseline: 'OpenIDSt'
		with: [ spec
				repository: 'github://fortizpenaloza/OpenIDSt:master/source';
				loads: #('Deployment') ].

	spec
		baseline: 'WillowMaterialize'
		with: [ spec
				repository: 'github://fortizpenaloza/Willow-Materialize:master/source';
				loads: #('Deployment') ].			
			
	spec
		baseline: 'Seaside3'
			with: [ spec repository: 'github://SeasideSt/Seaside:v3.2.4/repository';
				loads: #('Seaside-Environment' 'JQuery' 'Zinc') ];
		project: 'Seaside-Develoment-Tools' copyFrom: 'Seaside3' with: [ spec loads: #('Seaside-Development') ].			