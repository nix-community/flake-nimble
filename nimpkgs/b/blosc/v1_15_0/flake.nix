{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';
  inputs.src-blosc-v1_15_0.flake = false;
  inputs.src-blosc-v1_15_0.type = "github";
  inputs.src-blosc-v1_15_0.owner = "Vindaar";
  inputs.src-blosc-v1_15_0.repo = "nblosc";
  inputs.src-blosc-v1_15_0.ref = "refs/tags/v1.15.0";
  
  outputs = { self, nixpkgs, src-blosc-v1_15_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blosc-v1_15_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-blosc-v1_15_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}