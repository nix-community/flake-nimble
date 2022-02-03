{
  description = ''Design by Contract (DbC) library with minimal runtime.'';
  inputs.src-contracts-main.flake = false;
  inputs.src-contracts-main.type = "github";
  inputs.src-contracts-main.owner = "Udiknedormin";
  inputs.src-contracts-main.repo = "NimContracts";
  inputs.src-contracts-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-contracts-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-contracts-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-contracts-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}