{
  description = ''
    Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector
  '';
  inputs.src-nimquery.url = "https://github.com/GULPF/nimquery";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
