{
  description = ''
    Nim wrapper of the Sophia key/value store
  '';
  inputs.src-sophia.url = "https://github.com/gokr/nim-sophia";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
