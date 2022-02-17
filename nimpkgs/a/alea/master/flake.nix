{
  description = ''Define and compose random variables'';
  inputs.src-alea-master.flake = false;
  inputs.src-alea-master.type = "github";
  inputs.src-alea-master.owner = "andreaferretti";
  inputs.src-alea-master.repo = "alea";
  inputs.src-alea-master.ref = "refs/heads/master";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  outputs = { self, nixpkgs, src-alea-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alea-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alea-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}