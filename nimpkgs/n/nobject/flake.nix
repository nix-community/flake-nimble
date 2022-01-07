{
  description = ''
    A partially compile and runtime evaluated object, inspired from .net object
  '';
  inputs.src-nobject.url = "https://github.com/Carpall/nobject";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
