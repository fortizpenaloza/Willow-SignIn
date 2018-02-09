baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Willow-SignIn' with: [ spec requires: #('OAuth' 'WillowMaterialize') ].
				
			spec
				group: 'Deployment' with: #('Willow-SignIn');
				group: 'default' with: #('Deployment') ]