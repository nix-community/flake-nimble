{
  description = ''Preserves data model and serialization format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-preserves-v2_0_0.flake = false;
  inputs.src-preserves-v2_0_0.type = "other";
  inputs.src-preserves-v2_0_0.owner = "~ehmry";
  inputs.src-preserves-v2_0_0.repo = "preserves-nim";
  inputs.src-preserves-v2_0_0.ref = "refs/tags/v2.0.0";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."bigints".type = "github";
  inputs."bigints".owner = "riinr";
  inputs."bigints".repo = "flake-nimble";
  inputs."bigints".ref = "flake-pinning";
  inputs."bigints".dir = "nimpkgs/b/bigints";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, flakeNimbleLib, src-preserves-v2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preserves-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-preserves-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}