{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-blosc-v1_15_0.flake = false;
  inputs.src-blosc-v1_15_0.type = "github";
  inputs.src-blosc-v1_15_0.owner = "Vindaar";
  inputs.src-blosc-v1_15_0.repo = "nblosc";
  inputs.src-blosc-v1_15_0.ref = "refs/tags/v1.15.0";
  inputs.src-blosc-v1_15_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-blosc-v1_15_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blosc-v1_15_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blosc-v1_15_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}