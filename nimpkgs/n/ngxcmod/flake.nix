{
  description = ''
    High level wrapper for build nginx module w/ nginx-c-function
  '';
  inputs.src-ngxcmod.url = "https://github.com/ba0f3/ngxcmod.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
