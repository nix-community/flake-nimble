{
  description = ''Perlin noise and Simplex noise generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-perlin-0_4_0.flake = false;
  inputs.src-perlin-0_4_0.type = "github";
  inputs.src-perlin-0_4_0.owner = "Nycto";
  inputs.src-perlin-0_4_0.repo = "PerlinNim";
  inputs.src-perlin-0_4_0.ref = "refs/tags/0.4.0";
  inputs.src-perlin-0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-perlin-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-perlin-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}