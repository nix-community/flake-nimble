{
  description = ''Simple terminal ping graph'';
  inputs.src-pinggraph-master.flake = false;
  inputs.src-pinggraph-master.type = "github";
  inputs.src-pinggraph-master.owner = "SolitudeSF";
  inputs.src-pinggraph-master.repo = "pinggraph";
  inputs.src-pinggraph-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-pinggraph-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pinggraph-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pinggraph-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}