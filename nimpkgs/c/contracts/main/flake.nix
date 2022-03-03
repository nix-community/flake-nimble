{
  description = ''Design by Contract (DbC) library with minimal runtime.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-contracts-main.flake = false;
  inputs.src-contracts-main.type = "github";
  inputs.src-contracts-main.owner = "Udiknedormin";
  inputs.src-contracts-main.repo = "NimContracts";
  inputs.src-contracts-main.ref = "refs/heads/main";
  inputs.src-contracts-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-contracts-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-contracts-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-contracts-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}