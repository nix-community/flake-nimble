{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimvisa-main.flake = false;
  inputs.src-nimvisa-main.type = "github";
  inputs.src-nimvisa-main.owner = "leeooox";
  inputs.src-nimvisa-main.repo = "nimvisa";
  inputs.src-nimvisa-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimvisa-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimvisa-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimvisa-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}