{
  description = ''Linear algebra for Nim'';
  inputs.src-neo-0_1_2.flake = false;
  inputs.src-neo-0_1_2.type = "github";
  inputs.src-neo-0_1_2.owner = "andreaferretti";
  inputs.src-neo-0_1_2.repo = "neo";
  inputs.src-neo-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  
  inputs."nimcuda".type = "github";
  inputs."nimcuda".owner = "riinr";
  inputs."nimcuda".repo = "flake-nimble";
  inputs."nimcuda".ref = "flake-pinning";
  inputs."nimcuda".dir = "nimpkgs/n/nimcuda";

  
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  outputs = { self, nixpkgs, src-neo-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neo-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neo-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}