{
  description = ''Perlin noise and Simplex noise generation'';
  inputs.src-perlin-0_3_0.flake = false;
  inputs.src-perlin-0_3_0.type = "github";
  inputs.src-perlin-0_3_0.owner = "Nycto";
  inputs.src-perlin-0_3_0.repo = "PerlinNim";
  inputs.src-perlin-0_3_0.ref = "refs/tags/0.3.0";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  outputs = { self, nixpkgs, src-perlin-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-perlin-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}