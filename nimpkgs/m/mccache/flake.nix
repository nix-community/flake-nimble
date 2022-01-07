{
  description = ''
    mccache package: in-memory caching
  '';
  inputs.src-mccache.url = "https://github.com/abbeymart/mccache-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
