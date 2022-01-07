{
  description = ''
    Hi Fidelity Rendering Engine
  '';
  inputs.src-nimAGG.url = "https://github.com/jangko/nimAGG";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
