{
  description = ''
    everything  search engine wrapper
  '';
  inputs.src-nimeverything.url = "https://github.com/xland/nimeverything/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
