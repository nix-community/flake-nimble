{
  description = ''
    A static site generator written in Nim
  '';
  inputs.src-nimatic.url = "https://github.com/DangerOnTheRanger/nimatic";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
