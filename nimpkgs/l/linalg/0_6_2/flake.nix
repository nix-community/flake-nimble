{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-0_6_2.flake = false;
  inputs.src-linalg-0_6_2.type = "github";
  inputs.src-linalg-0_6_2.owner = "andreaferretti";
  inputs.src-linalg-0_6_2.repo = "linear-algebra";
  inputs.src-linalg-0_6_2.ref = "refs/tags/0.6.2";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, src-linalg-0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}