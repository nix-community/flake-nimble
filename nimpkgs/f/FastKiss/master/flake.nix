{
  description = ''FastCGI Web Framework for Nim.'';
  inputs.src-fastkiss-master.flake = false;
  inputs.src-fastkiss-master.type = "github";
  inputs.src-fastkiss-master.owner = "mrhdias";
  inputs.src-fastkiss-master.repo = "fastkiss";
  inputs.src-fastkiss-master.ref = "refs/heads/master";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-FastKiss-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-FastKiss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-FastKiss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}