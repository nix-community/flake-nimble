{
  description = ''String algorithms with succinct data structures'';
  inputs.src-cello-master.flake = false;
  inputs.src-cello-master.type = "github";
  inputs.src-cello-master.owner = "andreaferretti";
  inputs.src-cello-master.repo = "cello";
  inputs.src-cello-master.ref = "refs/heads/master";
  
  
  inputs."spills".url = "path:../../../s/spills";
  inputs."spills".type = "github";
  inputs."spills".owner = "riinr";
  inputs."spills".repo = "flake-nimble";
  inputs."spills".ref = "flake-pinning";
  inputs."spills".dir = "nimpkgs/s/spills";

  outputs = { self, nixpkgs, src-cello-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cello-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}