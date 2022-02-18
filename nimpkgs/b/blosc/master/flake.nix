{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-blosc-master.flake = false;
  inputs.src-blosc-master.type = "github";
  inputs.src-blosc-master.owner = "Vindaar";
  inputs.src-blosc-master.repo = "nblosc";
  inputs.src-blosc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-blosc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blosc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blosc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}