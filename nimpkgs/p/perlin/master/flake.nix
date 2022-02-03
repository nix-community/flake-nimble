{
  description = ''Perlin noise and Simplex noise generation'';
  inputs.src-perlin-master.flake = false;
  inputs.src-perlin-master.type = "github";
  inputs.src-perlin-master.owner = "Nycto";
  inputs.src-perlin-master.repo = "PerlinNim";
  inputs.src-perlin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-perlin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-perlin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}