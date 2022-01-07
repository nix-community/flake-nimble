{
  description = ''
    Text parsing utilities
  '';
  inputs.src-hparse.url = "https://github.com/haxscramper/hparse";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
