{
  description = ''Preserves data model and serialization format'';
  inputs.src-preserves-v1_1_0.flake = false;
  inputs.src-preserves-v1_1_0.type = "other";
  inputs.src-preserves-v1_1_0.owner = "~ehmry";
  inputs.src-preserves-v1_1_0.repo = "preserves-nim";
  inputs.src-preserves-v1_1_0.ref = "refs/tags/v1.1.0";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."bigints".url = "path:../../../b/bigints";
  inputs."bigints".type = "github";
  inputs."bigints".owner = "riinr";
  inputs."bigints".repo = "flake-nimble";
  inputs."bigints".ref = "flake-pinning";
  inputs."bigints".dir = "nimpkgs/b/bigints";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-preserves-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preserves-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-preserves-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}