{
  description = ''
    A library for cleanly creating an object or tuple based on another object or tuple
  '';
  inputs.src-basedOn.url = "https://github.com/KaceCottam/basedOn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
