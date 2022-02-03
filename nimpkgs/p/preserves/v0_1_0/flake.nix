{
  description = ''Preserves data model and serialization format'';
  inputs.src-preserves-v0_1_0.flake = false;
  inputs.src-preserves-v0_1_0.type = "other";
  inputs.src-preserves-v0_1_0.owner = "~ehmry";
  inputs.src-preserves-v0_1_0.repo = "preserves-nim";
  inputs.src-preserves-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."bigints".url = "path:../../../b/bigints";
  inputs."bigints".type = "github";
  inputs."bigints".owner = "riinr";
  inputs."bigints".repo = "flake-nimble";
  inputs."bigints".ref = "flake-pinning";
  inputs."bigints".dir = "nimpkgs/b/bigints";

  outputs = { self, nixpkgs, src-preserves-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preserves-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-preserves-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}