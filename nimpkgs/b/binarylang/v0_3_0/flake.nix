{
  description = ''Binary parser/encoder DSL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-binarylang-v0_3_0.flake = false;
  inputs.src-binarylang-v0_3_0.type = "github";
  inputs.src-binarylang-v0_3_0.owner = "sealmove";
  inputs.src-binarylang-v0_3_0.repo = "binarylang";
  inputs.src-binarylang-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-binarylang-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bitstreams".type = "github";
  # inputs."bitstreams".owner = "riinr";
  # inputs."bitstreams".repo = "flake-nimble";
  # inputs."bitstreams".ref = "flake-pinning";
  # inputs."bitstreams".dir = "nimpkgs/b/bitstreams";
  # inputs."bitstreams".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bitstreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-binarylang-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binarylang-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}