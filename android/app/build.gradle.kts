plugins {
    id("com.android.application")
    kotlin("android")
}

android {
    namespace = "com.example.p1" // 👈 replace with your actual package name
    compileSdk = 34

    defaultConfig {
        applicationId = "com.example.p1" // 👈 replace with your actual applicationId
        minSdk = 21
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions {
        jvmTarget = "17"
    }
}

dependencies {
    implementation("androidx.core:core-ktx:1.13.1")
    implementation("androidx.appcompat:appcompat:1.7.0")
    implementation("com.google.android.material:material:1.12.0")
    implementation("androidx.constraintlayout:constraintlayout:2.1.4")

    // Required for Flutter integration
    implementation("androidx.activity:activity-ktx:1.9.0")
}
