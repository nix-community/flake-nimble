{
  description = ''Command line tools for Prologue.'';
  inputs.src-logue-master.flake = false;
  inputs.src-logue-master.type = "github";
  inputs.src-logue-master.owner = "planety";
  inputs.src-logue-master.repo = "logue";
  inputs.src-logue-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-logue-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-logue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-logue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}