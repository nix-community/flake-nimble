{
  description = ''
    Pretty-printer
  '';
  inputs.src-hpprint.url = "https://github.com/haxscramper/hpprint";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
