// Root-level build.gradle.kts for Flutter project

allprojects {
	repositories {
		google()
		mavenCentral()
	}
}

tasks.register<Delete>("clean") {
	delete(rootProject.layout.buildDirectory)
}


tasks.register<Delete>("clean") {
	delete(rootProject.layout.buildDirectory)
}
