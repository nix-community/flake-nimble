{
  description = ''Perlin noise and Simplex noise generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-perlin-0_6_0.flake = false;
  inputs.src-perlin-0_6_0.type = "github";
  inputs.src-perlin-0_6_0.owner = "Nycto";
  inputs.src-perlin-0_6_0.repo = "PerlinNim";
  inputs.src-perlin-0_6_0.ref = "refs/tags/0.6.0";
  inputs.src-perlin-0_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-perlin-0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-perlin-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}