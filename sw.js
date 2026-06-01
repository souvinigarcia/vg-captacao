const CACHE = 'vg-imoveis-v1';
const ASSETS = ['/', '/index.html', '/manifest.json'];
self.addEventListener('install', e => e.waitUntil(caches.open(CACHE).then(c => c.addAll(ASSETS))));
self.addEventListener('fetch', e => {
  if (e.request.url.includes('supabase.co')) return; // never cache API calls
  e.respondWith(caches.match(e.request).then(r => r || fetch(e.request)));
});