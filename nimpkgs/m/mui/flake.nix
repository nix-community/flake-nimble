{
  description = ''
    A tiny immediate-mode UI library
  '';
  inputs.src-mui.url = "https://github.com/angluca/mui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
