{
  description = ''
    Easily use Animate.css classes
  '';
  inputs.src-animatecss.url = "https://github.com/thisago/animatecss";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
