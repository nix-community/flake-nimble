{
  description = ''Binary parser/encoder DSL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-binarylang-v0_5_1.flake = false;
  inputs.src-binarylang-v0_5_1.type = "github";
  inputs.src-binarylang-v0_5_1.owner = "sealmove";
  inputs.src-binarylang-v0_5_1.repo = "binarylang";
  inputs.src-binarylang-v0_5_1.ref = "refs/tags/v0.5.1";
  inputs.src-binarylang-v0_5_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bitstreams".type = "github";
  # inputs."bitstreams".owner = "riinr";
  # inputs."bitstreams".repo = "flake-nimble";
  # inputs."bitstreams".ref = "flake-pinning";
  # inputs."bitstreams".dir = "nimpkgs/b/bitstreams";
  # inputs."bitstreams".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bitstreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-binarylang-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binarylang-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}