{
  description = ''Preserves data model and serialization format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-preserves-v0_2_0.flake = false;
  inputs.src-preserves-v0_2_0.type = "other";
  inputs.src-preserves-v0_2_0.owner = "~ehmry";
  inputs.src-preserves-v0_2_0.repo = "preserves-nim";
  inputs.src-preserves-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-preserves-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bigints".type = "github";
  # inputs."bigints".owner = "riinr";
  # inputs."bigints".repo = "flake-nimble";
  # inputs."bigints".ref = "flake-pinning";
  # inputs."bigints".dir = "nimpkgs/b/bigints";
  # inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-preserves-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preserves-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-preserves-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}