{
  description = ''
    A Funge-98 interpreter written in nim
  '';
  inputs.src-nimfunge98.url = "https://git.adyxax.org/adyxax/nimfunge98";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
