{
  description = ''
    A QuickJS wrapper for Nim
  '';
  inputs.src-QuickJS4nim.url = "https://github.com/ImVexed/quickjs4nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
