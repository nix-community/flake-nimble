{
  description = ''A crafty implementation of structured logging for Nim'';
  inputs.src-chronicles-v0_10_1.flake = false;
  inputs.src-chronicles-v0_10_1.type = "github";
  inputs.src-chronicles-v0_10_1.owner = "status-im";
  inputs.src-chronicles-v0_10_1.repo = "nim-chronicles";
  inputs.src-chronicles-v0_10_1.ref = "refs/tags/v0.10.1";
  
  
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";

  
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";

  outputs = { self, nixpkgs, src-chronicles-v0_10_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-v0_10_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronicles-v0_10_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}