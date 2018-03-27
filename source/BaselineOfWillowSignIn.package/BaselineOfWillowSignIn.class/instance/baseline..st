baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Willow-SignIn'
				with: [ spec requires: #('OpenIDSt' 'WillowMaterialize') ].

			spec
				group: 'Deployment' with: #('Willow-SignIn');
				group: 'Development' with: #('Willow-SignIn' 'OpenIDSt-Dev');
				group: 'default' with: #('Deployment') ]