// START arkenfox user.js

// version: 111
// date: 30 March 2023

/* 0000: disable about:config warning ***/
user_pref("browser.aboutConfig.showWarning", false);

// user_pref("browser.startup.page", 0);
// user_pref("browser.startup.homepage", "about:blank");
// user_pref("browser.newtabpage.enabled", false);

/* 0105: disable sponsored content on Firefox Home (Activity Stream)
* [SETTING] Home>Firefox Home Content ***/
user_pref("browser.newtabpage.activity-stream.showSponsored", false); // [FF58+] Pocket > Sponsored Stories
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false); // [FF83+] Sponsored shortcuts
/* 0106: clear default topsites
* [NOTE] This does not block you from adding your own ***/
user_pref("browser.newtabpage.activity-stream.default.sites", "");

/* 0201: use Mozilla geolocation service instead of Google if permission is granted [FF74+]
* Optionally enable logging to the console (defaults to false) ***/
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");

// user_pref("geo.provider.network.logging.enabled", true); // [HIDDEN PREF]
// user_pref("geo.provider.ms-windows-location", false); // [WINDOWS]
// user_pref("geo.provider.use_corelocation", false); // [MAC]
// user_pref("geo.provider.use_gpsd", false); // [LINUX]
// user_pref("geo.provider.use_geoclue", false); // [FF102+] [LINUX]
// user_pref("intl.accept_languages", "en-US, en");
// user_pref("javascript.use_us_english_locale", true); // [HIDDEN PREF]

/* 0320: disable recommendation pane in about:addons (uses Google Analytics) ***/
user_pref("extensions.getAddons.showPane", false); // [HIDDEN PREF]
/* 0321: disable recommendations in about:addons' Extensions and Themes panes [FF68+] ***/
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
/* 0322: disable personalized Extension Recommendations in about:addons and AMO [FF65+]
* [NOTE] This pref has no effect when Health Reports (0331) are disabled
* [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to make personalized extension recommendations
user_pref("browser.discovery.enabled", false);

/* 0330: disable new data submission [FF41+]
* If disabled, no policy is shown or upload takes place, ever
user_pref("datareporting.policy.dataSubmissionEnabled", false);
/* 0331: disable Health Reports
* [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to send technical... data ***/
user_pref("datareporting.healthreport.uploadEnabled", false);
/* 0332: disable telemetry
* The "unified" pref affects the behavior of the "enabled" pref
* - If "unified" is false then "enabled" controls the telemetry module
* - If "unified" is true then "enabled" only controls whether to record extended data
* [NOTE] "toolkit.telemetry.enabled" is now LOCKED to reflect prerelease (true) or release builds (false) [2] ***/
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false); // see [NOTE]
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false); // [FF55+]
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false); // [FF55+]
user_pref("toolkit.telemetry.updatePing.enabled", false); // [FF56+]
user_pref("toolkit.telemetry.bhrPing.enabled", false); // [FF57+] Background Hang Reporter
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false); // [FF57+]
/* 0333: disable Telemetry Coverage */
user_pref("toolkit.telemetry.coverage.opt-out", true); // [HIDDEN PREF]
user_pref("toolkit.coverage.opt-out", true); // [FF64+] [HIDDEN PREF]
user_pref("toolkit.coverage.endpoint.base", "");
/* 0334: disable PingCentre telemetry (used in several System Add-ons) [FF57+]
* Defense-in-depth: currently covered by 0331 ***/
user_pref("browser.ping-centre.telemetry", false);
/* 0335: disable Firefox Home (Activity Stream) telemetry ***/
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

/* 0340: disable Studies
* [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to install and run studies ***/
user_pref("app.shield.optoutstudies.enabled", false);
/* 0341: disable Normandy/Shield [FF60+]
* Shield is a telemetry system that can push and test "recipes" */
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

/* 0350: disable Crash Reports ***/
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false); // [FF44+]
user_pref("browser.crashReports.unsubmittedCheck.enabled", false); // [FF51+] [DEFAULT: false]
/* 0351: enforce no submission of backlogged Crash Reports [FF58+]
* [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to send backlogged crash reports  ***/
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false); // [DEFAULT: false]

/** OTHER ***/
/* 0360: disable Captive Portal detection */
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false); // [FF52+]
/* 0361: disable Network Connectivity checks [FF65+] */
user_pref("network.connectivity-service.enabled", false);

/* 0401: disable SB (Safe Browsing)
* [WARNING] Do this at your own risk! These are the master switches
* [SETTING] Privacy & Security>Security>... Block dangerous and deceptive content ***/
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
/* 0402: disable SB checks for downloads (both local lookups + remote)
* This is the master switch for the safebrowsing.downloads* prefs (0403, 0404)
* [SETTING] Privacy & Security>Security>... "Block dangerous downloads" ***/
user_pref("browser.safebrowsing.downloads.enabled", false);
/* 0403: disable SB checks for downloads (remote)
* To verify the safety of certain executable files, Firefox may submit some information about the
* file, including the name, origin, size and a cryptographic hash of the contents, to the Google
* Safe Browsing service which helps Firefox determine whether or not the file should be blocked
* [SETUP-SECURITY] If you do not understand this, or you want this protection, then override this ***/
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", ""); // Defense-in-depth
/* 0404: disable SB checks for unwanted software
* [SETTING] Privacy & Security>Security>... "Warn you about unwanted and uncommon software" ***/
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
/* 0405: disable "ignore this warning" on SB warnings [FF45+]
* If clicked, it bypasses the block for that session. This is a means for admins to enforce SB */
user_pref("browser.safebrowsing.allowOverride", false);

/* 0601: disable link prefetching */
user_pref("network.prefetch-next", false);
/* 0602: disable DNS prefetching */
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true); // [DEFAULT: true]
/* 0603: disable predictor / prefetching ***/
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false); // [FF48+] [DEFAULT: false]
/* 0604: disable link-mouseover opening connection to linked server */
user_pref("network.http.speculative-parallel-limit", 0);
/* 0605: disable mousedown speculative connections on bookmarks and history [FF98+] ***/
user_pref("browser.places.speculativeConnect.enabled", false);
/* 0610: enforce no "Hyperlink Auditing" (click tracking) */
user_pref("browser.send_pings", false); // [DEFAULT: false]

// user_pref("network.dns.disableIPv6", true);

/* 0702: set the proxy server to do any DNS lookups when using SOCKS
* e.g. in Tor, this stops your local DNS server from knowing your Tor destination
* as a remote Tor node will handle the DNS request */
user_pref("network.proxy.socks_remote_dns", true);
/* 0703: disable using UNC (Uniform Naming Convention) paths [FF61+]
* [SETUP-CHROME] Can break extensions for profiles on network shares */
user_pref("network.file.disable_unc_paths", true); // [HIDDEN PREF]
/* 0704: disable GIO as a potential proxy bypass vector
* Gvfs/GIO has a set of supported protocols like obex, network, archive, computer,
* dav, cdda, gphoto2, trash, etc. By default only sftp is accepted (FF87+) */
user_pref("network.gio.supported-protocols", ""); // [HIDDEN PREF]

// user_pref("network.proxy.failover_direct", false);
// user_pref("network.proxy.allow_bypass", false); // [HIDDEN PREF FF95-96]

/* 0710: disable DNS-over-HTTPS (DoH) rollout [FF60+]
* 0=off by default, 2=TRR (Trusted Recursive Resolver) first, 3=TRR only, 5=explicitly off
* see "doh-rollout.home-region": USA 2019, Canada 2021, Russia/Ukraine 2022 [3] */
user_pref("network.trr.mode", 5);

// user_pref("keyword.enabled", false);

/* 0802: disable location bar domain guessing
* domain guessing intercepts DNS "hostname not found errors" and resends a
* request (e.g. by adding www or .com). This is inconsistent use (e.g. FQDNs), does not work
* via Proxy Servers (different error), is a flawed use of DNS (TLDs: why treat .com
* as the 411 for DNS errors?), privacy issues (why connect to sites you didn't
* intend to), can leak sensitive data (e.g. query strings: e.g. Princeton attack),
* and is a security risk (e.g. common typos & malicious sites set up to exploit this) ***/
user_pref("browser.fixup.alternate.enabled", false); // [DEFAULT: false FF104+]

// user_pref("browser.search.suggest.enabled", false);
// user_pref("browser.urlbar.suggest.searches", false);

/* 0805: disable location bar making speculative connections [FF56+] */
user_pref("browser.urlbar.speculativeConnect.enabled", false);
/* 0806: disable location bar leaking single words to a DNS provider **after searching** [FF78+]
* 0=never resolve, 1=use heuristics, 2=always resolve */
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0); // [DEFAULT: 0 FF104+]
/* 0807: disable location bar contextual suggestions [FF92+]
* [SETTING] Privacy & Security>Address Bar>Suggestions from... */
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false); // [FF95+]
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);

// user_pref("browser.urlbar.suggest.engines", false);

/* 0810: disable search and form history
* [SETUP-WEB] Be aware that autocomplete form data can be read by third parties [1][2]
* [NOTE] We also clear formdata on exit (2811)
* [SETTING] Privacy & Security>History>Custom Settings>Remember search and form history */
user_pref("browser.formfill.enable", false);

// user_pref("layout.css.visited_links_enabled", false);

/* 0903: disable auto-filling username & password form fields
* can leak in cross-site forms *and* be spoofed
* [NOTE] Username & password is still available when you enter the field
* [SETTING] Privacy & Security>Logins and Passwords>Autofill logins and passwords */
user_pref("signon.autofillForms", false);
/* 0904: disable formless login capture for Password Manager [FF51+] ***/
user_pref("signon.formlessCapture.enabled", false);
/* 0905: limit (or disable) HTTP authentication credentials dialogs triggered by sub-resources [FF41+]
* hardens against potential credentials phishing
* 0 = don't allow sub-resources to open HTTP authentication credentials dialogs
* 1 = don't allow cross-origin sub-resources to open HTTP authentication credentials dialogs
* 2 = allow sub-resources to open HTTP authentication credentials dialogs (default) ***/
user_pref("network.auth.subresource-http-auth-allow", 1);

// user_pref("network.http.windows-sso.enabled", false); // [DEFAULT: false]

// user_pref("browser.cache.disk.enable", false);

/* 1002: disable media cache from writing to disk in Private Browsing
* [NOTE] MSE (Media Source Extensions) are already stored in-memory in PB ***/
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true); // [FF75+]
// user_pref("media.memory_cache_max_size", 65536);

// user_pref("browser.sessionstore.privacy_level", 2);

/* 1005: disable automatic Firefox start and session restore after reboot [FF62+] [WINDOWS] **/
user_pref("toolkit.winRegisterApplicationRestart", false);

// user_pref("browser.shell.shortcutFavicons", false);

/* 1201: require safe negotiation
* Blocks connections to servers that don't support RFC 5746 [2] as they're potentially vulnerable to a
* MiTM attack [3]. A server without RFC 5746 can be safe from the attack if it disables renegotiations
* but the problem is that the browser can't know that. Setting this pref to true is the only way for the
* browser to ensure there will be no unsafe renegotiations on the channel between the browser and the server
* [SETUP-WEB] SSL_ERROR_UNSAFE_NEGOTIATION: is it worth overriding this for that one site?
* [STATS] SSL Labs (Sept 2022) reports over 99.3% of top sites have secure renegotiation [4] */
user_pref("security.ssl.require_safe_negotiation", true);
/* 1206: disable TLS1.3 0-RTT (round-trip time) [FF51+]
* This data is not forward secret, as it is encrypted solely under keys derived using
* the offered PSK. There are no guarantees of non-replay between connections */
user_pref("security.tls.enable_0rtt_data", false);

/* 1211: enforce OCSP fetching to confirm current validity of certificates
* 0=disabled, 1=enabled (default), 2=enabled for EV certificates only
* OCSP (non-stapled) leaks information about the sites you visit to the CA (cert authority)
* It's a trade-off between security (checking) and privacy (leaking info to the CA)
* [NOTE] This pref only controls OCSP fetching and does not affect OCSP stapling
* [SETTING] Privacy & Security>Security>Certificates>Query OCSP responder servers... */
user_pref("security.OCSP.enabled", 1); // [DEFAULT: 1]
/* 1212: set OCSP fetch failures (non-stapled, see 1211) to hard-fail
* [SETUP-WEB] SEC_ERROR_OCSP_SERVER_ERROR
* When a CA cannot be reached to validate a cert, Firefox just continues the connection (=soft-fail)
* Setting this pref to true tells Firefox to instead terminate the connection (=hard-fail)
* It is pointless to soft-fail when an OCSP fetch fails: you cannot confirm a cert is still valid (it
* could have been revoked) and/or you could be under attack (e.g. malicious blocking of OCSP servers) */
user_pref("security.OCSP.require", true);

/* 1221: disable Windows 8.1's Microsoft Family Safety cert [FF50+] [WINDOWS]
* 0=disable detecting Family Safety mode and importing the root
* 1=only attempt to detect Family Safety mode (don't import the root)
* 2=detect Family Safety mode and import the root */
user_pref("security.family_safety.mode", 0);
/* 1223: enable strict PKP (Public Key Pinning)
* 0=disabled, 1=allow user MiTM (default; such as your antivirus), 2=strict
* [SETUP-WEB] MOZILLA_PKIX_ERROR_KEY_PINNING_FAILURE ***/
user_pref("security.cert_pinning.enforcement_level", 2);
/* 1224: enable CRLite [FF73+]
* 0 = disabled
* 1 = consult CRLite but only collect telemetry
* 2 = consult CRLite and enforce both "Revoked" and "Not Revoked" results
* 3 = consult CRLite and enforce "Not Revoked" results, but defer to OCSP for "Revoked" (FF99+, default FF100+) */
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);


// user_pref("security.mixed_content.block_display_content", true); // Defense-in-depth (see 1244)

/* 1244: enable HTTPS-Only mode in all windows [FF76+]
* When the top-level is HTTPS, insecure subresources are also upgraded (silent fail)
* [SETTING] to add site exceptions: Padlock>HTTPS-Only mode>On (after "Continue to HTTP Site")
* [SETTING] Privacy & Security>HTTPS-Only Mode (and manage exceptions)
* [TEST] http://example.com [upgrade]
* [TEST] http://httpforever.com/ [no upgrade] ***/
user_pref("dom.security.https_only_mode", true); // [FF76+]
   
// user_pref("dom.security.https_only_mode_pbm", true); // [FF80+]

/* 1245: enable HTTPS-Only mode for local resources [FF77+] ***/
user_pref("dom.security.https_only_mode.upgrade_local", true);
/* 1246: disable HTTP background requests [FF82+]
* When attempting to upgrade, if the server doesn't respond within 3 seconds, Firefox sends
* a top-level HTTP request without path in order to check if the server supports HTTPS or not
* This is done to avoid waiting for a timeout which takes 90 seconds */
user_pref("dom.security.https_only_mode_send_http_background_request", false);

/* 1270: display warning on the padlock for "broken security" (if 1201 is false)
* Bug: warning padlock not indicated for subresources on a secure page! [2] */
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
/* 1272: display advanced information on Insecure Connection warning pages
* only works when it's possible to add an exception
* i.e. it doesn't work for HSTS discrepancies (https://subdomain.preloaded-hsts.badssl.com/) */
user_pref("browser.xul.error_pages.expert_bad_cert", true);

// user_pref("layout.css.font-visibility.private", 1);
// user_pref("layout.css.font-visibility.standard", 1);
// user_pref("layout.css.font-visibility.trackingprotection", 1);

// user_pref("network.http.referer.XOriginPolicy", 2);
// user_pref("network.http.referer.XOriginTrimmingPolicy", 2);

/* 1701: enable Container Tabs and its UI setting [FF50+]
* [SETTING] General>Tabs>Enable Container Tabs **/
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);

// user_pref("privacy.userContext.newTabContainerOnLeftClick.enabled", true);

/* 2002: force WebRTC inside the proxy [FF70+] ***/
user_pref("media.peerconnection.ice.proxy_only_if_behind_proxy", true);
/* 2003: force a single network interface for ICE candidates generation [FF42+]
* When using a system-wide proxy, it uses the proxy interface */
user_pref("media.peerconnection.ice.default_address_only", true);

// user_pref("media.peerconnection.ice.no_host", true);
// user_pref("media.gmp-provider.enabled", false);
// user_pref("media.gmp-widevinecdm.enabled", false);

/* 2022: disable all DRM content (EME: Encryption Media Extension)
* Optionally hide the setting which also disables the DRM prompt
* [SETUP-WEB] e.g. Netflix, Amazon Prime, Hulu, HBO, Disney+, Showtime, Starz, DirectTV
* [SETTING] General>DRM Content>Play DRM-controlled content */
user_pref("media.eme.enabled", false);

// user_pref("browser.eme.ui.enabled", false);

/* 2402: prevent scripts from moving and resizing open windows ***/
user_pref("dom.disable_window_move_resize", true);

/* 2601: prevent accessibility services from accessing your browser [RESTART] */
user_pref("accessibility.force_disabled", 1);
/* 2603: remove temp files opened with an external application */
user_pref("browser.helperApps.deleteTempFileOnExit", true);
/* 2606: disable UITour backend so there is no chance that a remote page can use it ***/
user_pref("browser.uitour.enabled", false);
user_pref("browser.uitour.url", ""); // Defense-in-depth
/* 2608: reset remote debugging to disabled */
user_pref("devtools.debugger.remote-enabled", false); // [DEFAULT: false]
/* 2611: disable middle mouse click opening links from clipboard */
user_pref("middlemouse.contentLoadURL", false);
/* 2615: disable websites overriding Firefox's keyboard shortcuts [FF58+]
* 0 (default) or 1=allow, 2=block
* [SETTING] to add site exceptions: Ctrl+I>Permissions>Override Keyboard Shortcuts ***/
user_pref("permissions.default.shortcuts", 2);
/* 2616: remove special permissions for certain mozilla domains [FF35+]
* [1] resource://app/defaults/permissions ***/
user_pref("permissions.manager.defaultsUrl", "");
/* 2617: remove webchannel whitelist ***/
user_pref("webchannel.allowObject.urlWhitelist", "");
/* 2619: use Punycode in Internationalized Domain Names to eliminate possible spoofing
* [SETUP-WEB] Might be undesirable for non-latin alphabet users since legitimate IDN's are also punycoded */
user_pref("network.IDN_show_punycode", true);
/* 2620: enforce PDFJS, disable PDFJS scripting
* This setting controls if the option "Display in Firefox" is available in the setting below
*   and by effect controls whether PDFs are handled in-browser or externally ("Ask" or "Open With")
* [WHY] pdfjs is lightweight, open source, and secure: the last exploit was June 2015 [1]
*   It doesn't break "state separation" of browser content (by not sharing with OS, independent apps).
*   It maintains disk avoidance and application data isolation. It's convenient. You can still save to disk.
* [NOTE] JS can still force a pdf to open in-browser by bundling its own code
* [SETUP-CHROME] You may prefer a different pdf reader for security/workflow reasons
* [SETTING] General>Applications>Portable Document Format (PDF) */
user_pref("pdfjs.disabled", false); // [DEFAULT: false]
user_pref("pdfjs.enableScripting", false); // [FF86+]
/* 2621: disable links launching Windows Store on Windows 8/8.1/10 [WINDOWS] ***/
user_pref("network.protocol-handler.external.ms-windows-store", false);
/* 2623: disable permissions delegation [FF73+]
* Currently applies to cross-origin geolocation, camera, mic and screen-sharing
* permissions, and fullscreen requests. Disabling delegation means any prompts
* for these will show/use their correct 3rd party origin */
user_pref("permissions.delegation.enabled", false);

// user_pref("browser.download.useDownloadDir", false);
// user_pref("browser.download.alwaysOpenPanel", false);
// user_pref("browser.download.manager.addToRecentDocs", false);
// user_pref("browser.download.always_ask_before_handling_new_types", true);

/* 2660: lock down allowed extension directories
* [SETUP-CHROME] This will break extensions, language packs, themes and any other
* XPI files which are installed outside of profile and application directories */
user_pref("extensions.enabledScopes", 5); // [HIDDEN PREF]
user_pref("extensions.autoDisableScopes", 15); // [DEFAULT: 15]
/* 2661: disable bypassing 3rd party extension install prompts [FF82+] */
user_pref("extensions.postDownloadThirdPartyPrompt", false);
/* 2662: disable webextension restrictions on certain mozilla domains (you also need 4503) [FF60+] */
user_pref("extensions.webextensions.restrictedDomains", "");

/* 2701: enable ETP Strict Mode [FF86+]
* ETP Strict Mode enables Total Cookie Protection (TCP)
* [NOTE] Adding site exceptions disables all ETP protections for that site and increases the risk of
* cross-site state tracking e.g. exceptions for SiteA and SiteB means PartyC on both sites is shared
* [SETTING] to add site exceptions: Urlbar>ETP Shield
* [SETTING] to manage site exceptions: Options>Privacy & Security>Enhanced Tracking Protection>Manage Exceptions ***/
user_pref("browser.contentblocking.category", "strict");
/* 2702: disable ETP web compat features [FF93+]
* [SETUP-HARDEN] Includes skip lists, heuristics (SmartBlock) and automatic grants
* Opener and redirect heuristics are granted for 30 days, see [3] */
   // user_pref("privacy.antitracking.enableWebcompat", false);
/* 2710: enable state partitioning of service workers [FF96+] ***/
user_pref("privacy.partition.serviceWorkers", true); // [DEFAULT: true FF105+]
/* 2720: enable APS (Always Partitioning Storage) ***/
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage", true); // [FF104+] [DEFAULT: true FF109+]
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage.exempt_sessionstorage", false); // [FF105+] [DEFAULT: false FF109+]

// user_pref("privacy.sanitize.sanitizeOnShutdown", true);
// user_pref("privacy.clearOnShutdown.cache", true);     // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.downloads", true); // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.formdata", true);  // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.history", true);   // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.sessions", true);  // [DEFAULT: true]
// user_pref("privacy.clearOnShutdown.siteSettings", false); // [DEFAULT: false]
// user_pref("privacy.clearOnShutdown.openWindows", true);
// user_pref("privacy.clearOnShutdown.cookies", true); // Cookies
// user_pref("privacy.clearOnShutdown.offlineApps", true); // Site Data
// user_pref("privacy.clearsitedata.cache.enabled", true);
// user_pref("privacy.cpd.cache", true);    // [DEFAULT: true]
// user_pref("privacy.cpd.formdata", true); // [DEFAULT: true]
// user_pref("privacy.cpd.history", true);  // [DEFAULT: true]
// user_pref("privacy.cpd.sessions", true); // [DEFAULT: true]
// user_pref("privacy.cpd.offlineApps", false); // [DEFAULT: false]
// user_pref("privacy.cpd.cookies", false);
// user_pref("privacy.cpd.downloads", true); // not used, see note above
// user_pref("privacy.cpd.openWindows", false); // Session Restore
// user_pref("privacy.cpd.passwords", false);
// user_pref("privacy.cpd.siteSettings", false);

/* 2822: reset default "Time range to clear" for "Clear Recent History" (2820)
* Firefox remembers your last choice. This will reset the value when you start Firefox
* 0=everything, 1=last hour, 2=last two hours, 3=last four hours, 4=today
* [NOTE] Values 5 (last 5 minutes) and 6 (last 24 hours) are not listed in the dropdown,
* which will display a blank value, and are not guaranteed to work ***/
user_pref("privacy.sanitize.timeSpan", 0);

// user_pref("privacy.resistFingerprinting", true);
// user_pref("privacy.window.maxInnerWidth", 1600);
// user_pref("privacy.window.maxInnerHeight", 900);

/* 4503: disable mozAddonManager Web API [FF57+]
* [NOTE] To allow extensions to work on AMO, you also need 2662 */
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true); // [HIDDEN PREF]

// user_pref("privacy.resistFingerprinting.letterboxing", true); // [HIDDEN PREF]
// user_pref("privacy.resistFingerprinting.letterboxing.dimensions", ""); // [HIDDEN PREF]

/* 4510: disable using system colors
* [SETTING] General>Language and Appearance>Fonts and Colors>Colors>Use system colors ***/
user_pref("browser.display.use_system_colors", false); // [DEFAULT: false NON-WINDOWS]
/* 4511: enforce non-native widget theme
* Security: removes/reduces system API calls, e.g. win32k API [1]
* Fingerprinting: provides a uniform look and feel across platforms [2] */
user_pref("widget.non-native-theme.enabled", true); // [DEFAULT: true]
/* 4512: enforce links targeting new windows to open in a new tab instead
* 1=most recent window or tab, 2=new window, 3=new tab
* Stops malicious window sizes and some screen resolution leaks.
* You can still right-click a link and open in a new window
* [SETTING] General>Tabs>Open links in tabs instead of new windows */
user_pref("browser.link.open_newwindow", 3); // [DEFAULT: 3]
/* 4513: set all open window methods to abide by "browser.link.open_newwindow" (4512) */
user_pref("browser.link.open_newwindow.restriction", 0);

// user_pref("webgl.disabled", true);

// user_pref("browser.privatebrowsing.autostart", true);
// user_pref("browser.cache.memory.enable", false);
// user_pref("browser.cache.memory.capacity", 0);

/* 5003: disable saving passwords
* [NOTE] This does not clear any passwords already saved
* [SETTING] Privacy & Security>Logins and Passwords>Ask to save logins and passwords for websites ***/
user_pref("signon.rememberSignons", false);

// user_pref("permissions.memory_only", true); // [HIDDEN PREF]
// user_pref("security.nocertdb", true);
// user_pref("browser.chrome.site_icons", false);

/* 5007: exclude "Undo Closed Tabs" in Session Restore ***/
user_pref("browser.sessionstore.max_tabs_undo", 0);
/* 5008: disable resuming session from crash
* [TEST] about:crashparent ***/
user_pref("browser.sessionstore.resume_from_crash", false);

// user_pref("browser.download.forbid_open_with", true);

/* 5010: disable location bar suggestion types
* [SETTING] Privacy & Security>Address Bar>When using the address bar, suggest ***/
// user_pref("browser.urlbar.suggest.history", false);
// user_pref("browser.urlbar.suggest.bookmark", false);
// user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false); // [FF78+]

// user_pref("browser.urlbar.maxRichResults", 0);
// user_pref("browser.urlbar.autoFill", false);
// user_pref("places.history.enabled", false);
// user_pref("browser.taskbar.lists.enabled", false);
// user_pref("browser.taskbar.lists.frequent.enabled", false);
// user_pref("browser.taskbar.lists.recent.enabled", false);
// user_pref("browser.taskbar.lists.tasks.enabled", false);
// user_pref("browser.taskbar.previews.enable", false); // [DEFAULT: false]
// user_pref("browser.download.folderList", 2);
// user_pref("extensions.formautofill.addresses.enabled", false); // [FF55+]
// user_pref("extensions.formautofill.creditCards.enabled", false); // [FF56+]
// user_pref("extensions.formautofill.heuristics.enabled", false); // [FF55+]

/* 5018: limit events that can cause a pop-up ***/
user_pref("dom.popup_allowed_events", "click dblclick mousedown pointerdown");

// user_pref("browser.pagethumbnails.capturing_disabled", true); // [HIDDEN PREF]

// user_pref("mathml.disabled", true); // 1173199
// user_pref("svg.disabled", true); // 1216893
// user_pref("gfx.font_rendering.graphite.enabled", false);
// user_pref("javascript.options.asmjs", false);
// user_pref("javascript.options.ion", false);
// user_pref("javascript.options.baselinejit", false);
// user_pref("javascript.options.jit_trustedprincipals", true); // [FF75+] [HIDDEN PREF]
// user_pref("javascript.options.wasm", false);
// user_pref("gfx.font_rendering.opentype_svg.enabled", false);

/* 6001: enforce Firefox blocklist
* [WHY] It includes updates for "revoked certificates" */
user_pref("extensions.blocklist.enabled", true); // [DEFAULT: true]
/* 6002: enforce no referer spoofing
* [WHY] Spoofing can affect CSRF (Cross-Site Request Forgery) protections ***/
user_pref("network.http.referer.spoofSource", false); // [DEFAULT: false]
/* 6004: enforce a security delay on some confirmation dialogs such as install, open/save */
user_pref("security.dialog_enable_delay", 1000); // [DEFAULT: 1000]
/* 6008: enforce no First Party Isolation [FF51+]
* [WARNING] Replaced with network partitioning (FF85+) and TCP (2701),
* and enabling FPI disables those. FPI is no longer maintained ***/
user_pref("privacy.firstparty.isolate", false); // [DEFAULT: false]
/* 6009: enforce SmartBlock shims [FF81+]
* In FF96+ these are listed in about:compat */
user_pref("extensions.webcompat.enable_shims", true); // [DEFAULT: true]
/* 6010: enforce no TLS 1.0/1.1 downgrades */
user_pref("security.tls.version.enable-deprecated", false); // [DEFAULT: false]
/* 6011: enforce disabling of Web Compatibility Reporter [FF56+]
* Web Compatibility Reporter adds a "Report Site Issue" button to send data to Mozilla
* [WHY] To prevent wasting Mozilla's time with a custom setup ***/
user_pref("extensions.webcompat-reporter.enabled", false); // [DEFAULT: false]

/* 9001: disable welcome notices ***/
user_pref("browser.startup.homepage_override.mstone", "ignore");
/* 9002: disable General>Browsing>Recommend extensions/features as you browse [FF67+] ***/
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
/* 9003: disable What's New toolbar icon [FF69+] ***/
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);
/* 9004: disable search terms [FF110+]
* [SETTING] Search>Search Bar>Use the address bar for search and navigation>Show search terms instead of URL... ***/
user_pref("browser.urlbar.showSearchTerms.enabled", false);

// END arkenfox user.js


/*---------------------------------------------------------------------------*/


// START yokoffing Betterfox
// version: 111

/****************************************************************************
 * SECTION: FASTFOX                                                         *
****************************************************************************/
user_pref("nglayout.initialpaint.delay", 0);
user_pref("nglayout.initialpaint.delay_in_oopif", 0);
user_pref("content.notify.interval", 100000);
user_pref("browser.startup.preXulSkeletonUI", false);

/** EXPERIMENTAL ***/
user_pref("layout.css.grid-template-masonry-value.enabled", true);
user_pref("layout.css.animation-composition.enabled", true);
user_pref("dom.enable_web_task_scheduling", true);

/** GFX ***/
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.precache-shaders", true);
user_pref("gfx.webrender.compositor", true);
user_pref("layers.gpu-process.enabled", true);
user_pref("media.hardware-video-decoding.enabled", true);
user_pref("gfx.canvas.accelerated", true);
user_pref("gfx.canvas.accelerated.cache-items", 32768);
user_pref("gfx.canvas.accelerated.cache-size", 4096);
user_pref("gfx.content.skia-font-cache-size", 80);
user_pref("image.cache.size", 10485760);
user_pref("image.mem.decode_bytes_at_a_time", 131072);
user_pref("image.mem.shared.unmap.min_expiration_ms", 120000);
user_pref("media.memory_cache_max_size", 1048576);
user_pref("media.memory_caches_combined_limit_kb", 2560000);
user_pref("media.cache_readahead_limit", 9000);
user_pref("media.cache_resume_threshold", 6000);

/** BROWSER CACHE ***/
user_pref("browser.cache.memory.max_entry_size", 153600);

/** NETWORK ***/
user_pref("network.buffer.cache.size", 262144);
user_pref("network.buffer.cache.count", 128);
user_pref("network.http.max-connections", 1800);
user_pref("network.http.max-persistent-connections-per-server", 10);
user_pref("network.ssl_tokens_cache_capacity", 32768);

/****************************************************************************
 * SECTION: PESKYFOX                                                        *
****************************************************************************/
/** MOZILLA UI ***/
user_pref("layout.css.prefers-color-scheme.content-override", 2);
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("app.update.suppressPrompts", true);
user_pref("browser.compactmode.show", true);
user_pref("browser.privatebrowsing.vpnpromourl", "");
//user_pref("extensions.getAddons.showPane", false);
//user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
//user_pref("browser.shell.checkDefaultBrowser", false);
//user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
//user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("browser.preferences.moreFromMozilla", false);
user_pref("browser.tabs.tabmanager.enabled", false);
user_pref("browser.aboutwelcome.enabled", false);
user_pref("findbar.highlightAll", true);
//user_pref("middlemouse.contentLoadURL", false);
user_pref("browser.privatebrowsing.enable-new-indicator", false);

/** URL BAR ***/
user_pref("browser.urlbar.suggest.calculator", true);
user_pref("browser.urlbar.unitConversion.enabled", true);

/*** POCKET ***/
user_pref("extensions.pocket.enabled", false);


/** PDF ***/
user_pref("browser.download.open_pdf_attachments_inline", true);

/** TAB BEHAVIOR ***/
user_pref("browser.link.open_newwindow.restriction", 0);
user_pref("dom.disable_window_move_resize", true);
user_pref("browser.tabs.loadBookmarksInTabs", true);
user_pref("browser.bookmarks.openInTabClosesMenu", false);
user_pref("layout.css.has-selector.enabled", true);

// END yokoffing Betterfox


/*---------------------------------------------------------------------------*/


// START Firefox Arch Linux

// https://wiki.archlinux.org/title/Firefox
// 2023-03-28

// Hardware acceleration
// user_pref("gfx.webrender.all", true);
user_pref("media.ffmpeg.vaapi.enabled", true);

// KDE integration
user_pref("widget.use-xdg-desktop-portal.mime-handler", 1);
user_pref("widget.use-xdg-desktop-portal.file-picker", 1);
user_pref("media.hardwaremediakeys.enabled", false);

// Force system DPI
user_pref("layout.css.dpi", 0);

user_pref("security.secure_connection_icon_color_gray", false)

// START Firefox-UI-Fix user.js

// ** Theme Default Options ****************************************************
// userchrome.css usercontent.css activate
//user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Proton Enabled #127 || Removed at 97 #328 (Maintained for compatibility with ESR)
user_pref("browser.proton.enabled", true);

// Fill SVG Color
user_pref("svg.context-properties.content.enabled", true);

// CSS Color Mix - 88 Above
user_pref("layout.css.color-mix.enabled", true);

// CSS Blur Filter - 88 Above
user_pref("layout.css.backdrop-filter.enabled", true);

// Restore Compact Mode - 89 Above
// user_pref("browser.compactmode.show", true);

// about:home Search Bar - 89 Above
user_pref("browser.newtabpage.activity-stream.improvesearch.handoffToAwesomebar", false);

// CSS's `:has()` selector #457 - 103 Above
user_pref("layout.css.has-selector.enabled", true);

// ** Useful Options ***********************************************************
// Integrated calculator at urlbar
user_pref("browser.urlbar.suggest.calculator", true);

// Integrated unit convertor at urlbar
user_pref("browser.urlbar.unitConversion.enabled", true);

// == Smooth Scrolling ==========================================================
// ** Scrolling Options ********************************************************
// based on natural smooth scrolling v2 by aveyo
// this preset will reset couple extra variables for consistency
//         Pref                                              Value                 Original

user_pref("apz.allow_zooming",                               true);            ///     true
user_pref("apz.force_disable_desktop_zooming_scrollbars",   false);            ///    false
user_pref("apz.paint_skipping.enabled",                      true);            ///     true
user_pref("apz.windows.use_direct_manipulation",             true);            ///     true
user_pref("dom.event.wheel-deltaMode-lines.always-disabled", true);            ///    false
user_pref("general.smoothScroll.currentVelocityWeighting", "0.12");            ///   "0.25" <- 1. If scroll too slow, set to "0.15"
user_pref("general.smoothScroll.durationToIntervalRatio",    1000);            ///      200
user_pref("general.smoothScroll.lines.durationMaxMS",         100);            ///      150
user_pref("general.smoothScroll.lines.durationMinMS",           0);            ///      150
user_pref("general.smoothScroll.mouseWheel.durationMaxMS",    100);            ///      200
user_pref("general.smoothScroll.mouseWheel.durationMinMS",      0);            ///       50
user_pref("general.smoothScroll.mouseWheel.migrationPercent", 100);            ///      100
user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS", 12);   ///      120
user_pref("general.smoothScroll.msdPhysics.enabled",                  true);   ///    false
user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant", 200);   ///     1250
user_pref("general.smoothScroll.msdPhysics.regularSpringConstant",     200);   ///     1000
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaMS",         10);   ///       12
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaRatio",  "1.20");   ///    "1.3"
user_pref("general.smoothScroll.msdPhysics.slowdownSpringConstant",   1000);   ///     2000
user_pref("general.smoothScroll.other.durationMaxMS",         100);            ///      150
user_pref("general.smoothScroll.other.durationMinMS",           0);            ///      150
user_pref("general.smoothScroll.pages.durationMaxMS",         100);            ///      150
user_pref("general.smoothScroll.pages.durationMinMS",           0);            ///      150
user_pref("general.smoothScroll.pixels.durationMaxMS",        100);            ///      150
user_pref("general.smoothScroll.pixels.durationMinMS",          0);            ///      150
user_pref("general.smoothScroll.scrollbars.durationMaxMS",    100);            ///      150
user_pref("general.smoothScroll.scrollbars.durationMinMS",      0);            ///      150
user_pref("general.smoothScroll.stopDecelerationWeighting", "0.6");            ///    "0.4"
user_pref("layers.async-pan-zoom.enabled",                   true);            ///     true
user_pref("layout.css.scroll-behavior.spring-constant",   "250.0");            ///   "250.0"
user_pref("mousewheel.acceleration.factor",                     3);            ///       10
user_pref("mousewheel.acceleration.start",                     -1);            ///       -1
user_pref("mousewheel.default.delta_multiplier_x",            100);            ///      100
user_pref("mousewheel.default.delta_multiplier_y",            100);            ///      100
user_pref("mousewheel.default.delta_multiplier_z",            100);            ///      100
user_pref("mousewheel.min_line_scroll_amount",                  0);            ///        5
user_pref("mousewheel.system_scroll_override.enabled",       true);            ///     true <- 2. If scroll too fast, set to false
user_pref("mousewheel.system_scroll_override_on_root_content.enabled", false); ///     true
user_pref("mousewheel.transaction.timeout",                  1500);            ///     1500
user_pref("toolkit.scrollbox.horizontalScrollDistance",         4);            ///        5
user_pref("toolkit.scrollbox.verticalScrollDistance",           3);            ///        3

// END firefox ui fix


/*---------------------------------------------------------------------------*/


// START pyulluko

// PREF: When browser pings are enabled, only allow pinging the same host as the origin page
// http://kb.mozillazine.org/Browser.send_pings.require_same_host
user_pref("browser.send_pings.require_same_host",		true);

// PREF: Disable automatic reporting of TLS connection errors
// https://support.mozilla.org/en-US/kb/certificate-pinning-reports
// we could also disable security.ssl.errorReporting.enabled, but I think it's
// good to leave the option to report potentially malicious sites if the user
// chooses to do so.
// you can test this at https://pinningtest.appspot.com/
user_pref("security.ssl.errorReporting.automatic",		false);

// END pyulluko