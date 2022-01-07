{
  description = ''
    Nim framework for VK
  '';
  inputs.src-saya.url = "https://github.com/Ethosa/saya_nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
