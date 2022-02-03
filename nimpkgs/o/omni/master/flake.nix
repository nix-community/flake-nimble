{
  description = ''omni is a DSL for low-level audio programming.'';
  inputs.src-omni-master.flake = false;
  inputs.src-omni-master.type = "github";
  inputs.src-omni-master.owner = "vitreo12";
  inputs.src-omni-master.repo = "omni";
  inputs.src-omni-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-omni-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omni-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omni-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}