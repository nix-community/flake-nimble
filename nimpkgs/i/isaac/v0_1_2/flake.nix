{
  description = ''ISAAC PRNG implementation on Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-isaac-v0_1_2.flake = false;
  inputs.src-isaac-v0_1_2.type = "github";
  inputs.src-isaac-v0_1_2.owner = "pragmagic";
  inputs.src-isaac-v0_1_2.repo = "isaac";
  inputs.src-isaac-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-isaac-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isaac-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-isaac-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}