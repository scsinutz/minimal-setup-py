pipelineJob("pipeline-eb-admin-portal-upgrade-1") {
	description()
	keepDependencies(false)
	definition {
		cpsScm {
			scm {
				git {
					remote {
						github("Development/ens-jenkins-pipelines", "ssh")
						credentials("ghe-credential")
					}
					branch("ebadmin-upgrade-pipeline")
				}
			}
			scriptPath("service-upgrade-states/pipeline-eb-admin-portal-upgrade.dsl")
		}
	}
	disabled(false)
}
