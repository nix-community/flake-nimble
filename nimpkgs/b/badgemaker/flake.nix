{
  description = ''
    The Nim badgemaker tool.
  '';
  inputs.src-badgemaker.url = "https://github.com/ethosa/badgemaker";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
