'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "e037fc9169a92916c52c0d3d6c5393c1",
"assets/AssetManifest.bin.json": "15c3a94d6bf69ef61a594a9a1c6b217c",
"assets/AssetManifest.json": "0c12e69065e09e00bf4f3db651367524",
"assets/assets/CreateAccount/background(5).png": "48ff3439e0e27a9f1d469192233d786f",
"assets/assets/CreateAccount/text(3).png": "423a3e48cda2a7a03317bbd932e233f6",
"assets/assets/Home/1.png": "4d3bc2eaf3a7effd80affcedcb85f735",
"assets/assets/Home/2.png": "6e4a00b7341baaa1d876232cac690d4f",
"assets/assets/Home/3.png": "4616e44a4d9839a3f210874ec1b7de90",
"assets/assets/Home/4.png": "e07703143529e746691039d1214cd808",
"assets/assets/LoginPage/background(4).png": "84806b23caa8deee7149dc5106c4ce37",
"assets/assets/LoginPage/Eye-slash.png": "87cea3fa06af7e7696268f5b02d81911",
"assets/assets/LoginPage/Google.png": "4fc2e626e3486075abf643995eda15f5",
"assets/assets/LoginPage/OR.png": "b0c48105aa66455369e82dd8e14b5fb7",
"assets/assets/LoginPage/text(2).png": "8a8c9cde485294327348f39a18845f22",
"assets/assets/Onbording/background(2).png": "ce082e7b7e7a48aaad4756c74b89d15a",
"assets/assets/Onbording/movieNight.png": "026baa7cd931cbfee8256f1ff3e77848",
"assets/assets/Onbording/text(1).png": "3dc1c94e55e010a046c8ffc5f573c81b",
"assets/assets/Onbording2/background(3).png": "d69ffe7d082d5d5f5728813917b260a4",
"assets/assets/Onbording2/VideoTape.png": "a751d94492cc1d6d751098be8a2911e2",
"assets/assets/ProfileScreen/movie(2).png": "0e4603fb1e2013abb9fa17acc024e116",
"assets/assets/ProfileScreen/movie(3).png": "20a0e1a7fcc89cb65d45a6db124b3128",
"assets/assets/ProfileScreen/movie(4).png": "b24820b1593a1e21021d104835b9f6ac",
"assets/assets/ProfileScreen/movie.png": "0a078b0296d5458088eb8c2924116ee1",
"assets/assets/SplashScreen/background(1).png": "a3aa20c332b3a3a33fb587b808ceb17c",
"assets/assets/SplashScreen/cineSpectra.png": "e54ac964d2911bdaf1c7eb9d88c39940",
"assets/assets/SplashScreen/filmRolls.png": "bc79fb15a0ff48eaa10a9009a0a4f5e5",
"assets/assets/SplashScreen/logo.png": "599a379b7640be1e5aa1b88ded16d3c6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0dd1132578964f98fcbb4149d347e6bc",
"assets/NOTICES": "253df72a5efc4e4c99b2c0e61ba37f46",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "8693f9288854572c6365a9852ed4b147",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bb94c16981f0e93adef20a9982f2f9a4",
"/": "bb94c16981f0e93adef20a9982f2f9a4",
"main.dart.js": "88942ce38caca47d76264b234710bee9",
"manifest.json": "bf24c84c3bf99672a631c4f84464e793",
"version.json": "fe3c1dc3dc299aed70d0ed755289d609"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
