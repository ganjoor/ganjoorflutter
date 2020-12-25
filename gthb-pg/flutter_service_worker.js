'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "797d244fb446bbde56b4bdfc96ccd92e",
"assets/FontManifest.json": "9b988da0d1e761df7a96547ff3cfe51b",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/fonts/Samim.ttf": "dff4f93c6702d280ea2acf25fb4270ae",
"assets/images/poets/10.png": "9f100e6a888cdb637aa190dca902903d",
"assets/images/poets/11.png": "5f9328c4e68791ff15fd1be97a055208",
"assets/images/poets/12.png": "9e313cd005b6fa4912cfd89799a8f508",
"assets/images/poets/13.png": "be344552868c13ce4905934f5a11cf74",
"assets/images/poets/14.png": "51a4e48de1fd1b4804b4dd4426d27119",
"assets/images/poets/15.png": "de0dce7c5aa2f53b0661b89d179cc22e",
"assets/images/poets/16.png": "7819485d481ab32379719c8df3cbee58",
"assets/images/poets/17.png": "b3597028333fc2149ecdbeb21d2a3503",
"assets/images/poets/18.png": "bce86a1b31bd1791a8fd361f76342b32",
"assets/images/poets/19.png": "633176cfa51b49a02156eecb7bd561f8",
"assets/images/poets/2.png": "dd5909c87c8951b980601b0e0c9c9fed",
"assets/images/poets/20.png": "985c50a656492e17e073d6754831fab1",
"assets/images/poets/21.png": "e0ef01e43ab12768e17c2011619ff3e7",
"assets/images/poets/22.png": "3d0fd3c65a6176948db9a590c5e2c3a6",
"assets/images/poets/23.png": "45c2d090e120aaf52eb1bed70757e4db",
"assets/images/poets/24.png": "73bfe05c61b6f66637f01f22db0d3110",
"assets/images/poets/25.png": "c85f7da15892f500d5fe4f4eef63b2ea",
"assets/images/poets/26.png": "c62cbdc562655727ccbcdfbf34237d23",
"assets/images/poets/27.png": "3114ca10c2e6b0e18616b1fe3808d36b",
"assets/images/poets/28.png": "00a5d627296e5ff9d538d12c7384bb08",
"assets/images/poets/29.png": "8560ee84954fcdd48e0a5bf31327e757",
"assets/images/poets/3.png": "0c3c9511fa272d243fe5dc4f30069af6",
"assets/images/poets/30.png": "cc6ea5831c22d13409bd6fe10c9e5004",
"assets/images/poets/31.png": "2c020070bf9a97dd4a0fe77c4e77f9c5",
"assets/images/poets/32.png": "ba1f127a2d086c866736b22076112de4",
"assets/images/poets/33.png": "dca8137c8f10f6107dc5b97c2605798b",
"assets/images/poets/34.png": "16135ff56c8ac0affcfbf108648bd441",
"assets/images/poets/35.png": "c3e8bd54424a4e986f1052eff82b5ef3",
"assets/images/poets/37.png": "c0ffc7570a1a58c9fa174e27d6cf1ef4",
"assets/images/poets/38.png": "ebb0a1ab1f6c3f972fcaf011f4c6cc7a",
"assets/images/poets/39.png": "9ba2b1e1cedf28188bd164c6fa84fbe4",
"assets/images/poets/4.png": "e0a4bb7a2692d71ca443911febfdbdad",
"assets/images/poets/40.png": "40dafb15bab4e8880be56b556373fb51",
"assets/images/poets/41.png": "b8b4545ff454e7115f4296ef328f26d4",
"assets/images/poets/42.png": "b9bb39ac828cfe0ad03d02cd0b674bd3",
"assets/images/poets/43.png": "cac1fa1fc9072663c8cf8d1eefa3261e",
"assets/images/poets/44.png": "3652b6ae181d6a0690e0fe92f0717047",
"assets/images/poets/45.png": "9c93e44ac330a6dac7256df03e598e48",
"assets/images/poets/46.png": "a1c2719bc3da064977e27442a9fc93f7",
"assets/images/poets/47.png": "50cbae9bd9c0fc03460ec41293547aa8",
"assets/images/poets/48.png": "5f4fe41fbfc59809e66309be8915314f",
"assets/images/poets/49.png": "bb6a361da34206d17b6303b764baecbd",
"assets/images/poets/5.png": "424f37100e88ef29e65c7bfa3e46e810",
"assets/images/poets/50.png": "7d28ae5457643202e6ff120add6fba66",
"assets/images/poets/501.png": "97e6ab5316f8c43a5e9d834d484961b8",
"assets/images/poets/502.png": "424a06e8f3f8bbaafcb59851e33aa977",
"assets/images/poets/503.png": "f9e8d4d7da02055f0e6415b1f4346846",
"assets/images/poets/504.png": "44e6b6a21ca240c7e1b79e556d06d087",
"assets/images/poets/505.png": "f6bfedbffac06065efebd7a98c8d4e2d",
"assets/images/poets/506.png": "0e0c7c99558050f34b0e725bc4ade0e2",
"assets/images/poets/509.png": "bb2cccef417da075d78e83d9d47d5426",
"assets/images/poets/51.png": "3d494f2b0aaa6a1a1f1a1dd42e7d1dae",
"assets/images/poets/510.png": "696bcffc15581c1d292e50f9b94ef66e",
"assets/images/poets/511.png": "c57667451f5c36d7aee83a5a8eb0b4bf",
"assets/images/poets/512.png": "a5e6d48b4f58979133cf224101aecff4",
"assets/images/poets/513.png": "350461c3061c8f084757acef771bda51",
"assets/images/poets/514.png": "a18967d39b01fb88b30f51776e248a17",
"assets/images/poets/515.png": "6879b7e8377c8d1dd1553cb22cda7316",
"assets/images/poets/516.png": "94556fc0ad8168ef7f8a968511e6b815",
"assets/images/poets/517.png": "95a8597db6092a472b653a4498c578e7",
"assets/images/poets/518.png": "33bf3e8266098667aaef7bdea714078d",
"assets/images/poets/52.png": "81afe2b657ecb33bd15f6502f3b8dea9",
"assets/images/poets/53.png": "955ce5f178b57fa8d602dc0d0e71cf02",
"assets/images/poets/54.png": "9592842b5d8401bba0eb04967b50b9fe",
"assets/images/poets/55.png": "a27deab7ecae66cf1cca71536eb18660",
"assets/images/poets/56.png": "1f8d1d0ccc519651ab5e75014752f0ae",
"assets/images/poets/57.png": "75b08ff1df9d73ba130299bad5f5b2a6",
"assets/images/poets/58.png": "77e7bf28b2e5c6edab518b893bb94019",
"assets/images/poets/59.png": "01890f977768ccd567ce0b293e588455",
"assets/images/poets/6.png": "6c70ea9be5cab89241f718b43e05d392",
"assets/images/poets/60.png": "f748c7ab9a31720865d776ed70d15a4e",
"assets/images/poets/600.png": "ae6db768522ff93da0f598922c88097a",
"assets/images/poets/602.png": "c59ed58c8febbd4f17c7a149198e03de",
"assets/images/poets/605.png": "9846590e12424394362d88a9a6dd07e1",
"assets/images/poets/61.png": "2934cc66c765b29bfa15e4cdf9db05f7",
"assets/images/poets/610.png": "bbcb79a82742204f7e76049159fa494d",
"assets/images/poets/613.png": "e21be1ffab736c8a822a161396cb7f99",
"assets/images/poets/615.png": "530f7337ddf8d46540b44cd3af1184c2",
"assets/images/poets/616.png": "5c2d97b1e4f3e6ca65d379f14f622c24",
"assets/images/poets/617.png": "463baa8bd00569eeea084a221fd548ba",
"assets/images/poets/618.png": "ee06d84c5dffce872bcbde9b27658d13",
"assets/images/poets/619.png": "63be9a9b65afe6bb6db7122ae583f13e",
"assets/images/poets/62.png": "7784a8dfdb1cf2d390f111f5e175d92a",
"assets/images/poets/620.png": "02b43f8519939f26cdb67454ad2dc734",
"assets/images/poets/621.png": "15d6fc708f0113fd1780c603a35eeccc",
"assets/images/poets/622.png": "bce547dc336021a57d645c28b147bbcb",
"assets/images/poets/623.png": "d5da856cd376244406ce6a855e71c610",
"assets/images/poets/624.png": "6d4ce4b7cda352404ce29d72d8dca745",
"assets/images/poets/63.png": "08d5c3326b2c33a506e716ee2f7ed514",
"assets/images/poets/64.png": "6e5f853957c9b88bb24823b08c79805d",
"assets/images/poets/65.png": "43c0d94466030fcaa4065e300f2d7ea2",
"assets/images/poets/66.png": "f14f0bc626fca7c971f3fe18f3cb9d0f",
"assets/images/poets/67.png": "b28042ef4f0637a181d2dc1c70ad7f48",
"assets/images/poets/68.png": "482b526185b2def6387dec7ceef9981c",
"assets/images/poets/69.png": "b8703e201c0da31bd6d508b4467264da",
"assets/images/poets/7.png": "6516eb1c05fb196b7fcba4bbb5fd5906",
"assets/images/poets/70.png": "a4a34e40d1fa1667502971212c31c1a1",
"assets/images/poets/700.png": "3dd99e8837c22991c63694d048225834",
"assets/images/poets/701.png": "dde27ed95c0da7c1dfe48c631faeee26",
"assets/images/poets/71.png": "84c7c699d2d64a5fa9dbf7f68c248378",
"assets/images/poets/72.png": "4228e46cd745906b4feec347f18f7edf",
"assets/images/poets/73.png": "78f3ab63f5ed3fb15f1afed920b781cc",
"assets/images/poets/74.png": "bbd04f240d72e93ee79df6a27e174bf5",
"assets/images/poets/75.png": "341cba285188c59bd31d905e0775fda0",
"assets/images/poets/76.png": "1e1127a93469b6f2c820c80b04d34b1e",
"assets/images/poets/77.png": "3bb309177178f3f9a86fb717cc7868d4",
"assets/images/poets/78.png": "766e45cd38eca504c2b5a5df037eadde",
"assets/images/poets/8.png": "c9a02dbad25ba97ea07aa8211dc0e903",
"assets/images/poets/9.png": "7b0669a70434042e8054daeefc45afcb",
"assets/images/poets/999.png": "3f982053c9964907619dd726f899d213",
"assets/NOTICES": "0ee353099eef8eca1c4c2ae2be2ae90a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "595d85609c136054572958df61d29540",
"icons/Icon-192.png": "6bebd8ac68ca6aa08f20b4edcbd18a7e",
"icons/Icon-512.png": "1e72ef8bdf0b640211066f1e87fcf001",
"index.html": "7532eb353580ffcae461ab9ab18db817",
"/": "7532eb353580ffcae461ab9ab18db817",
"main.dart.js": "f4f14572338df64af35dc65537ba79c2",
"manifest.json": "4477624097cc816ded197893d5ec485b",
"version.json": "1d059b17c7c751a9e0dd6ba0bdb94c6e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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
