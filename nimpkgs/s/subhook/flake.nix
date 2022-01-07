{
  description = ''
    subhook wrapper
  '';
  inputs.src-subhook.url = "https://github.com/ba0f3/subhook.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
