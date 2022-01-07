{
  description = ''
    a tiny tool to bump nimble versions
  '';
  inputs.src-bump.url = "https://github.com/disruptek/bump";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
