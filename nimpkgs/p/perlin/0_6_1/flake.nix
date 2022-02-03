{
  description = ''Perlin noise and Simplex noise generation'';
  inputs.src-perlin-0_6_1.flake = false;
  inputs.src-perlin-0_6_1.type = "github";
  inputs.src-perlin-0_6_1.owner = "Nycto";
  inputs.src-perlin-0_6_1.repo = "PerlinNim";
  inputs.src-perlin-0_6_1.ref = "refs/tags/0.6.1";
  
  outputs = { self, nixpkgs, src-perlin-0_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-perlin-0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}