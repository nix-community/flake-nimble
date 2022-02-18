{
  description = ''Plotting tool using NiGui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nmiline-v1_0.flake = false;
  inputs.src-nmiline-v1_0.type = "github";
  inputs.src-nmiline-v1_0.owner = "mzteruru52";
  inputs.src-nmiline-v1_0.repo = "NmiLine";
  inputs.src-nmiline-v1_0.ref = "refs/tags/v1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nmiline-v1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmiline-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nmiline-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}