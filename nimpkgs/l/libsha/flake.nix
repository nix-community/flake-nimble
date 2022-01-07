{
  description = ''
    Sha1 and Sha2 implementations
  '';
  inputs.src-libsha.url = "https://github.com/forlan-ua/nim-libsha";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
