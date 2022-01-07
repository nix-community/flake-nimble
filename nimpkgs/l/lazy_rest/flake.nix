{
  description = ''
    Simple reST HTML generation with some extras.
  '';
  inputs.src-lazy_rest.url = "https://github.com/Araq/lazy_rest";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
