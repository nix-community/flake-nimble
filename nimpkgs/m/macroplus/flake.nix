{
  description = ''
    a collection of useful macro functionalities
  '';
  inputs.src-macroplus.url = "https://github.com/hamidb80/macroplus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
