{
  description = ''Linear algebra for Nim'';
  inputs.src-neo-0_3_1.flake = false;
  inputs.src-neo-0_3_1.type = "github";
  inputs.src-neo-0_3_1.owner = "andreaferretti";
  inputs.src-neo-0_3_1.repo = "neo";
  inputs.src-neo-0_3_1.ref = "refs/tags/0.3.1";
  
  
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

  outputs = { self, nixpkgs, src-neo-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neo-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neo-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}