{
  description = ''
    Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver
  '';
  inputs.src-primme.url = "https://github.com/jxy/primme";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
