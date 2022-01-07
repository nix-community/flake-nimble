{
  description = ''
    A RPC framework for building web APIs
  '';
  inputs.src-nerve.url = "https://github.com/nepeckman/nerve-rpc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
