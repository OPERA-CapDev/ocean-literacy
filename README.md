# OPERA Ocean Literacy Materials

Website of the ocean literacy materials of the OPERA Capacity Development Activities (CIPMA UNESCO Chair, GGOSSS, Mercator Ocean International, funded by the European Union), served by GitHub Pages at:

**https://ocean-literacy.ggosss.org/**

## Structure

- `index.html`: the landing page (list of materials). Edit it to add a card per tool or document.
- `ocean-forecasting-explorer-quick/`: the quick version (about 10 minutes per section), at https://ocean-literacy.ggosss.org/ocean-forecasting-explorer-quick/; it is a copy of the full version with `CONFIG.quick = true`, refreshed with `./sync-quick.sh`. The full version also switches to the short form with `?mode=quick` in its address.
- `ocean-forecasting-explorer/`: the Ocean Forecasting Explorer (English and French, FR | EN button), at https://ocean-literacy.ggosss.org/ocean-forecasting-explorer/ (its own notes: `ocean-forecasting-explorer/README_site.md`).
- `CNAME`: the custom domain. Keep it; GitHub reads it to serve the site at ocean-literacy.ggosss.org.
- Future materials go in their own folder next to `ocean-forecasting-explorer/`, for example `oofs-brochure/`.

Nothing to build: plain HTML, CSS and JavaScript.

## Publishing

1. DNS: ask the ggosss.org administrator for one record: type `CNAME`, host `ocean-literacy`, value `opera-capdev.github.io`.
2. Repository Settings → Pages → Build and deployment → Source "Deploy from a branch", branch `main`, folder `/ (root)`, Save.
3. Same page, Custom domain: `ocean-literacy.ggosss.org`, Save. When the DNS check passes, tick "Enforce HTTPS".

Before the DNS record exists, the site is already visible at https://opera-capdev.github.io/ocean-literacy/ (and the Explorer at https://opera-capdev.github.io/ocean-literacy/ocean-forecasting-explorer/).

## Embedding the Explorer on another website (Drupal, WordPress)

```html
<iframe id="ofe" src="https://ocean-literacy.ggosss.org/ocean-forecasting-explorer/" title="Ocean Forecasting Explorer" style="width:100%;border:0;min-height:900px" loading="lazy" allow="fullscreen"></iframe>
<script>
window.addEventListener('message', function (e) {
  if (e.data && e.data.type === 'ofe-height') document.getElementById('ofe').style.height = (e.data.height + 20) + 'px';
});
</script>
```

Direct links: `…/ocean-forecasting-explorer/#learn`, `#challenges`, `#services`.

## Updating

Edit the files on GitHub (web editor or upload) and commit to `main`; GitHub Pages republishes within a minute. The Explorer sends anonymous usage counters under the key `github` (`CONFIG.deploy` in its `index.html`); open it with `#stats` to see them.

## Licence and credits

Texts CC BY 4.0, code MIT, third party photos and figures credited in each page. See `LICENSE.md`.
