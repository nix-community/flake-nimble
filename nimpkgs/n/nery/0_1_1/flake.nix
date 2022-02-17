{
  description = ''A simple library to create queries in Nim.'';
  inputs.src-nery-0_1_1.flake = false;
  inputs.src-nery-0_1_1.type = "github";
  inputs.src-nery-0_1_1.owner = "David-Kunz";
  inputs.src-nery-0_1_1.repo = "Nery";
  inputs.src-nery-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-nery-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nery-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nery-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}