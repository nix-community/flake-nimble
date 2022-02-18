{
  description = ''Perlin noise and Simplex noise generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-perlin-master.flake = false;
  inputs.src-perlin-master.type = "github";
  inputs.src-perlin-master.owner = "Nycto";
  inputs.src-perlin-master.repo = "PerlinNim";
  inputs.src-perlin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-perlin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-perlin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}