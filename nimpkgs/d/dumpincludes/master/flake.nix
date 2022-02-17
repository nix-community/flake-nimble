{
  description = ''See where your exe size comes from.'';
  inputs.src-dumpincludes-master.flake = false;
  inputs.src-dumpincludes-master.type = "github";
  inputs.src-dumpincludes-master.owner = "treeform";
  inputs.src-dumpincludes-master.repo = "dumpincludes";
  inputs.src-dumpincludes-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-dumpincludes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dumpincludes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dumpincludes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}