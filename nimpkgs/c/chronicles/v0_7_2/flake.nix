{
  description = ''A crafty implementation of structured logging for Nim'';
  inputs.src-chronicles-v0_7_2.flake = false;
  inputs.src-chronicles-v0_7_2.type = "github";
  inputs.src-chronicles-v0_7_2.owner = "status-im";
  inputs.src-chronicles-v0_7_2.repo = "nim-chronicles";
  inputs.src-chronicles-v0_7_2.ref = "refs/tags/v0.7.2";
  
  
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";

  
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";

  outputs = { self, nixpkgs, src-chronicles-v0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronicles-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}