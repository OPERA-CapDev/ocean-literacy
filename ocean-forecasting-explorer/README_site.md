# Ocean Forecasting Explorer

Interactive ocean literacy page of the OPERA Capacity Development Activities (CIPMA UNESCO Chair, GGOSSS, Mercator Ocean International, funded by the European Union). Four learning modules, a 7 day forecast challenge and a directory of official forecasting services, built from the OPERA Ocean Literacy factsheets.

**Live page:** https://ocean-literacy.ggosss.org/ocean-forecasting-explorer/

## Hosting

This repository is published with GitHub Pages from the `main` branch, root folder. Nothing to build: `index.html` holds the whole page; media are in `img/`, `icons/` and `videos/`.

The address `ocean-literacy.ggosss.org` is the custom domain of the organisation site (repository `OPERA-capDev.github.io`, which holds the `CNAME` file). Every project repository of the organisation is then served under that domain, this one at `/ocean-forecasting-explorer/`. Do not add a `CNAME` file here.

To publish after creating the repository: Settings → Pages → Build and deployment → Source "Deploy from a branch", Branch `main`, folder `/ (root)`, Save. The page is online a minute later at `https://opera-capdev.github.io/ocean-forecasting-explorer/`, and at the address above once the organisation site and the DNS record exist.

## Embedding on a website (Drupal, WordPress, any CMS)

Paste this where the page should appear. The iframe grows with the content, so there is no inner scrollbar.

```html
<iframe id="ofe" src="https://ocean-literacy.ggosss.org/ocean-forecasting-explorer/" title="Ocean Forecasting Explorer" style="width:100%;border:0;min-height:900px" loading="lazy" allow="fullscreen"></iframe>
<script>
window.addEventListener('message', function (e) {
  if (e.data && e.data.type === 'ofe-height') document.getElementById('ofe').style.height = (e.data.height + 20) + 'px';
});
</script>
```

A direct link also works: https://ocean-literacy.ggosss.org/ocean-forecasting-explorer/#learn opens the Learn view, `#challenges` the challenge, `#services` the directory.

## Updating

Edit `index.html` (texts are in plain JavaScript objects, see `README_site.md`), commit to `main`, and GitHub Pages republishes automatically.

## Statistics

Anonymous counters are sent to the OPERA Firebase database under the key `github` (`CONFIG.deploy` in `index.html`). Open the page with `#stats` to see them. Set `CONFIG.stats = false` to disable.

## Licence and credits

Texts CC BY 4.0, code MIT, third party photos and figures credited in the page. See `LICENSE.md` and `README_site.md`.
