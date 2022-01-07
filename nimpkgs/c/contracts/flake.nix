{
  description = ''
    Design by Contract (DbC) library with minimal runtime.
  '';
  inputs.src-contracts.url = "https://github.com/Udiknedormin/NimContracts";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
