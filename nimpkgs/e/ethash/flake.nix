{
  description = ''
    A Nim implementation of Ethash, the ethereum proof-of-work hashing function
  '';
  inputs.src-ethash.url = "https://github.com/status-im/nim-ethash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
