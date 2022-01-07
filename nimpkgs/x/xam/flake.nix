{
  description = ''
    xam
  '';
  inputs.src-xam.url = "https://github.com/j-a-s-d/xam";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
