{
  description = ''Plotting tool using NiGui'';
  inputs.src-nmiline-v1_0_1.flake = false;
  inputs.src-nmiline-v1_0_1.type = "github";
  inputs.src-nmiline-v1_0_1.owner = "mzteruru52";
  inputs.src-nmiline-v1_0_1.repo = "NmiLine";
  inputs.src-nmiline-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-nmiline-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmiline-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmiline-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}