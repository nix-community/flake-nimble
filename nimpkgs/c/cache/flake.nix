{
  description = ''
    A cache library.
  '';
  inputs.src-cache.url = "https://github.com/planety/cached";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
