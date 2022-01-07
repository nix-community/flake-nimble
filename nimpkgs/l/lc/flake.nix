{
  description = ''
    A post-modern, "multi-dimensional" configurable ls/file lister
  '';
  inputs.src-lc.url = "https://github.com/c-blake/lc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
