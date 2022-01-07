{
  description = ''
    Nim's function chaining and method cascading
  '';
  inputs.src-chain.url = "https://github.com/khchen/chain";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
