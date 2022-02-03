{
  description = ''Define and compose random variables'';
  inputs.src-alea-0_1_4.flake = false;
  inputs.src-alea-0_1_4.type = "github";
  inputs.src-alea-0_1_4.owner = "andreaferretti";
  inputs.src-alea-0_1_4.repo = "alea";
  inputs.src-alea-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."random".url = "path:../../../r/random";
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  outputs = { self, nixpkgs, src-alea-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alea-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-alea-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}