platform_tests += \
    apex_file_test \
    apex_manifest_test \
    ActivityManagerPerfTests \
    ActivityManagerPerfTestsTestApp \
    AndroidTVJankTests \
    ApiDemos \
    AppCompatibilityTest \
    AppLaunch \
    AppLaunchWear \
    AppLinkFunctionalTests \
    AppLinkTestApp \
    AppSmoke \
    AppTransitionTests \
    AutoLocTestApp \
    AutoLocVersionedTestApp_v1 \
    AutoLocVersionedTestApp_v2 \
    BackgroundDexOptServiceIntegrationTests \
    BandwidthEnforcementTest \
    BandwidthTests \
    BluetoothTests \
    BootHelperApp \
    BusinessCard \
    CalculatorFunctionalTests \
    CalendarTests \
    camera_client_test \
    camera_metadata_tests \
    CellBroadcastReceiverTests \
    ConnectivityManagerTest \
    ContactsTests \
    CtsCameraTestCases \
    CtsHardwareTestCases \
    DataIdleTest \
    Development \
    DeviceHealthChecks \
    DeviceHealthTests \
    DexLoggerIntegrationTests \
    DialerJankTests \
    DownloadManagerTestApp \
    DummyIME \
    ExternalLocAllPermsTestApp \
    ExternalLocTestApp \
    ExternalLocVersionedTestApp_v1 \
    ExternalLocVersionedTestApp_v2 \
    ExternalSharedPermsBTTestApp \
    ExternalSharedPermsDiffKeyTestApp \
    ExternalSharedPermsFLTestApp \
    ExternalSharedPermsTestApp \
    flatland \
    FrameworksCoreTests \
    FrameworkCoreTests_install \
    FrameworkCoreTests_install_bad_dex \
    FrameworkCoreTests_install_complete_package_info \
    FrameworkCoreTests_install_decl_perm \
    FrameworkCoreTests_install_loc_auto \
    FrameworkCoreTests_install_loc_internal \
    FrameworkCoreTests_install_loc_sdcard \
    FrameworkCoreTests_install_loc_unspecified \
    FrameworkCoreTests_install_use_perm_good \
    FrameworkCoreTests_install_uses_feature \
    FrameworkCoreTests_install_verifier_bad \
    FrameworkCoreTests_install_verifier_good \
    FrameworkCoreTests_version_1 \
    FrameworkCoreTests_version_1_diff \
    FrameworkCoreTests_version_1_nosys \
    FrameworkCoreTests_version_2 \
    FrameworkCoreTests_version_2_diff \
    FrameworkCoreTests_version_3 \
    FrameworkPerf \
    FrameworkPermissionTests \
    FrameworksCoreTests \
    FrameworksPrivacyLibraryTests \
    FrameworksUtilTests \
    InternalLocTestApp \
    JankMicroBenchmarkTests \
    LauncherRotationStressTest \
    MemoryUsage \
    MultiDexLegacyTestApp \
    MultiDexLegacyTestApp2 \
    MultiDexLegacyTestServices \
    MultiDexLegacyTestServicesTests \
    MultiDexLegacyVersionedTestApp_v1 \
    MultiDexLegacyVersionedTestApp_v2 \
    MultiDexLegacyVersionedTestApp_v3 \
    net_test_bluetooth \
    net_test_btcore \
    net_test_device \
    net_test_hci \
    net_test_osi \
    NoLocTestApp \
    NoLocVersionedTestApp_v1 \
    NoLocVersionedTestApp_v2 \
    NotificationFunctionalTests \
    NotificationStressTests \
    OverviewFunctionalTests \
    PerformanceAppTest \
    PerformanceLaunch \
    PermissionFunctionalTests \
    PermissionTestAppMV1 \
    PermissionUtils \
    PlatformScenarioTests \
    PowerPerfTest \
    SettingsUITests \
    SimpleTestApp \
    skia_dm \
    skia_nanobench \
    sl4a \
    SmokeTest \
    SmokeTestApp \
    SysAppJankTestsWear \
    TouchLatencyJankTestWear \
    UbSystemUiJankTests \
    UbWebViewJankTests \
    UiBench \
    UiBenchJankTests \
    UiBenchJankTestsWear \
    UpdateExternalLocTestApp_v1_ext \
    UpdateExternalLocTestApp_v2_none \
    UpdateExtToIntLocTestApp_v1_ext \
    UpdateExtToIntLocTestApp_v2_int \
    VersatileTestApp_Auto \
    VersatileTestApp_External \
    VersatileTestApp_Internal \
    VersatileTestApp_None \
    VoiceInteraction \
    WifiStrengthScannerUtil \

ifneq ($(strip $(BOARD_PERFSETUP_SCRIPT)),)
platform_tests += perf-setup.sh
endif

ifneq ($(filter vsoc_x86 vsoc_x86_64, $(TARGET_DEVICE)),)
  platform_tests += \
    CuttlefishRilTests \
    CuttlefishWifiTests
endif
