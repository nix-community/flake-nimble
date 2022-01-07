{
  description = ''
    eachdo executes commands with each multidimensional values
  '';
  inputs.src-eachdo.url = "https://github.com/jiro4989/eachdo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
