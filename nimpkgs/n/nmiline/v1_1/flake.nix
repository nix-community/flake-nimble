{
  description = ''Plotting tool using NiGui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nmiline-v1_1.flake = false;
  inputs.src-nmiline-v1_1.type = "github";
  inputs.src-nmiline-v1_1.owner = "mzteruru52";
  inputs.src-nmiline-v1_1.repo = "NmiLine";
  inputs.src-nmiline-v1_1.ref = "refs/tags/v1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nmiline-v1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmiline-v1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nmiline-v1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}