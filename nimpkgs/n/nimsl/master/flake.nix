{
  description = ''Shaders in Nim.'';
  inputs.src-nimsl-master.flake = false;
  inputs.src-nimsl-master.type = "github";
  inputs.src-nimsl-master.owner = "yglukhov";
  inputs.src-nimsl-master.repo = "nimsl";
  inputs.src-nimsl-master.ref = "refs/heads/master";
  
  
  inputs."variant".url = "path:../../../v/variant";
  inputs."variant".type = "github";
  inputs."variant".owner = "riinr";
  inputs."variant".repo = "flake-nimble";
  inputs."variant".ref = "flake-pinning";
  inputs."variant".dir = "nimpkgs/v/variant";

  outputs = { self, nixpkgs, src-nimsl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}