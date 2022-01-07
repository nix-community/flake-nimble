{
  description = ''
    Trait system for nim
  '';
  inputs.src-nimtraits.url = "https://github.com/haxscramper/nimtraits";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
