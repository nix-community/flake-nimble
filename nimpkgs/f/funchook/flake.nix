{
  description = ''
    funchook wrapper
  '';
  inputs.src-funchook.url = "https://github.com/ba0f3/funchook.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
