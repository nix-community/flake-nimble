{
  description = ''
    Simple shape drawing
  '';
  inputs.src-hdrawing.url = "https://github.com/haxscramper/hdrawing";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
