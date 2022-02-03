{
  description = ''libgraphqlparser wrapper for Nim'';
  inputs.src-nimgraphql-master.flake = false;
  inputs.src-nimgraphql-master.type = "github";
  inputs.src-nimgraphql-master.owner = "genotrance";
  inputs.src-nimgraphql-master.repo = "nimgraphql";
  inputs.src-nimgraphql-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimgraphql-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgraphql-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgraphql-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}