baselines
setUpDependencies: spec

	spec
		baseline: 'OpenIDSt'
		with: [ spec
				repository: 'github://fortizpenaloza/OpenIDSt:master/source';
				loads: #('Deployment') ].
	spec
		project: 'OpenIDSt-Dev'
		copyFrom: 'OpenIDSt'
		with: [ spec loads: #('OpenIDSt-Tests') ].

	spec
		baseline: 'WillowMaterialize'
		with: [ spec
				repository: 'github://fortizpenaloza/Willow-Materialize:master/source';
				loads: #('Development') ]