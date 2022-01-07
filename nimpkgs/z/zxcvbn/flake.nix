{
  description = ''
    Nim bindings for the zxcvbn-c password strength estimation library
  '';
  inputs.src-zxcvbn.url = "https://github.com/status-im/nim-zxcvbn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
