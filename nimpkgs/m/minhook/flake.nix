{
  description = ''
    MinHook wrapper for Nim
  '';
  inputs.src-minhook.url = "https://github.com/khchen/minhook";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
