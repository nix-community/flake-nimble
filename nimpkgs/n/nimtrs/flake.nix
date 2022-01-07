{
  description = ''
    Nim term rewriting system
  '';
  inputs.src-nimtrs.url = "https://github.com/haxscramper/nimtrs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
