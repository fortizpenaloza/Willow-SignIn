baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Willow-SignIn'
				with: [ spec requires: #('OAuth2St' 'WillowMaterialize') ].

			spec
				group: 'Deployment' with: #('Willow-SignIn');
				group: 'Development' with: #('Willow-SignIn' 'OAuth2St-Dev');
				group: 'default' with: #('Deployment') ]