{
  description = ''
    Nim's Windows GUI Framework.
  '';
  inputs.src-wNim.url = "https://github.com/khchen/wNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
