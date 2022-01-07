{
  description = ''
    Collection of helper utilities
  '';
  inputs.src-hmisc.url = "https://github.com/haxscramper/hmisc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
