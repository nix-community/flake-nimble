{
  description = ''
    Web Technologies based Crossplatform GUI Framework
  '';
  inputs.src-crowngui.url = "https://github.com/bung87/crowngui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
