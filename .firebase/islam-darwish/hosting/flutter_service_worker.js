'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"ads.txt": "7310255ed45a2b3e4011bf49c814a392",
"app-ads.txt": "b84913398a742d5feef6266dfa4d33cf",
"assets/AssetManifest.bin": "db5b66ccf3e4de67e78e818d86a7c724",
"assets/AssetManifest.json": "98c4ae490a9f7446964a447f00aad022",
"assets/assets/fonts/OpenSans-Regular.ttf": "7df68ccfcb8ffe00669871052a4929c9",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/bloc.png": "977fbfba561065f9a68c4b47f9774531",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/dart.png": "1ab71d33e7ba834836197b4fa8726da0",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/facebook.svg": "0f2864779a4fb4565284e23688e963ab",
"assets/assets/icons/firebase.png": "36170822afe4c716cfbdb96dac8cd10e",
"assets/assets/icons/flutter.png": "1105c9a994c1a6638daed558d5b631fd",
"assets/assets/icons/github.svg": "533a2ec570618796064611102593ac26",
"assets/assets/icons/java.png": "69312787efe1f0f388e1856d7d6b6d3d",
"assets/assets/icons/kotlin.png": "33d049b4ca3c28fbb1903f3a159b1bd9",
"assets/assets/icons/linkedin.svg": "3ecd4cf0b3c464424eb91f92cb2e220c",
"assets/assets/icons/playstore.svg": "7cb53e87b5b83d40bbe3b6588cc76a2c",
"assets/assets/icons/twitter.svg": "0961a4227d5bec8cc7711ca96622d099",
"assets/assets/images/car.png": "ae3e0dda1da997a4e0ccd5cf1a25d2cd",
"assets/assets/images/ChaoMe%2520Theme%2520Editor%2520COVER.png": "aef8c442ff634d7471af9053c3f7f507",
"assets/assets/images/image.png": "5d19f6e6e491079de696f97cbef2d5ee",
"assets/assets/images/ISO2USB%2520COVER.png": "093705e7d13db043d1a7abf1126a3723",
"assets/assets/images/mixapplications.png": "b9dbe59dcfa58c055abb30b6bf65a341",
"assets/assets/images/profile.jpg": "a5edd511d7188ef345ef27e90d171194",
"assets/assets/images/Rufus%2520COVER.png": "e08d728acb190aa438ff5b291eef9027",
"assets/assets/images/Theme%2520Editor%2520For%2520EMUI%2520COVER.png": "63b7ffdbfcf6831369a36a17095b8fa3",
"assets/assets/images/Ultimate%2520USB%2520Cover.png": "1015b3ecce95987121ee2bb43e4b3f89",
"assets/assets/images/USB%2520FILE%2520MANAGER%2520COVER.png": "500adc1e8194bf5887df287d59ece966",
"assets/assets/images/USB%2520Tools%2520COVER.png": "d8d71b230781a116f12ed2c5887cb553",
"assets/assets/images/Ventoy%2520COVER.png": "af9b509309da4184b50d2430b10ac2ad",
"assets/FontManifest.json": "2ca6d4e327a8ba6e3a5b8fdfae22a606",
"assets/fonts/MaterialIcons-Regular.otf": "2dea70979bb3f44c90386feacb5ecd0a",
"assets/NOTICES": "e0e44f7e98bb8d4476a0b8642beb896f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d7791ef376c159f302b8ad90a748d2ab",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5070443340d1d8cceb516d02c3d6dee7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "658b490c9da97710b01bd0f8825fce94",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon-16x16.png": "c397993110d2d7dcf71a2f045e13a832",
"favicon-32x32.png": "4f23b1e3ab7596776b9ab3bb4e796167",
"favicon.ico": "a784f0536988377799e64496570a1e58",
"favicon.png": "7db8962dc32f8dfeaebfcfb6edbe36a0",
"firebase-debug.log": "cd6ea755f9ae02e115bdb5e5999e7a63",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"googlea01afbe284ab84e8.html": "f00de74f46c25028e5dc0614f45c1b32",
"icon.png": "a082b8611a434c22886a9560dc43da76",
"icons/android-chrome-192x192.png": "fa11b1543520b0d67bf452fb8841eb13",
"icons/apple-touch-icon.png": "ce0dc8f6ba299346976be29ca2d74e72",
"icons/favicon-16x16.png": "c397993110d2d7dcf71a2f045e13a832",
"icons/favicon-32x32.png": "4f23b1e3ab7596776b9ab3bb4e796167",
"icons/favicon.ico": "a784f0536988377799e64496570a1e58",
"icons/site.webmanifest": "3bbccedface908936ca94df52e793b85",
"index.html": "b3e00bf20f3880546409010ce46cc35b",
"/": "b3e00bf20f3880546409010ce46cc35b",
"main.dart.js": "9a7c3748b92da6171c115916c0e06253",
"manifest.json": "4517f980d6748738cee9ce4f753345ab",
"version.json": "fad92f33a102b0a00317ffb32c0cd54a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
