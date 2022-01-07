{
  description = ''
    A high-level libao wrapper
  '';
  inputs.src-ao.url = "https://github.com/ephja/nim-ao";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
