# gentoo-ebuilds

This is a mirror of my local Gentoo ebuild repository, meant to host ebuilds for every somewhat niche piece of software I wish to install through Portage, but still lacks an official package.

### Installation
To emerge one of the ebuilds hosted here, add this repo to portage by running the following as root:
```bash
eselect repository add nulljonas git https://github.com/nullJonas/gentoo-ebuilds.git
```
Make sure to synchronize your ebuild database afterwards:
```bash
emaint sync -r nulljonas
```
Now you should already be able to install these packages with emerge, just like you would with any official ebuild.

### Package List:
- **app-editors/trilium** ([homepage](https://github.com/TriliumNext/Trilium))
    - Hierarchical note taking app for personal knowledge bases.
