{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimvisa-0_1_1.flake = false;
  inputs.src-nimvisa-0_1_1.type = "github";
  inputs.src-nimvisa-0_1_1.owner = "leeooox";
  inputs.src-nimvisa-0_1_1.repo = "nimvisa";
  inputs.src-nimvisa-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimvisa-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimvisa-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}