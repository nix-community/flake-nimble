{
  description = ''The Nim implementation of NanoID'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nanoid-v0_1_0.flake = false;
  inputs.src-nanoid-v0_1_0.type = "github";
  inputs.src-nanoid-v0_1_0.owner = "icyphox";
  inputs.src-nanoid-v0_1_0.repo = "nanoid.nim";
  inputs.src-nanoid-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nanoid-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nanoid-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanoid-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nanoid-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}