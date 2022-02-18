{
  description = ''unicode symbols'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-figures-v1_0_0.flake = false;
  inputs.src-figures-v1_0_0.type = "github";
  inputs.src-figures-v1_0_0.owner = "lmariscal";
  inputs.src-figures-v1_0_0.repo = "figures";
  inputs.src-figures-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-figures-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-figures-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-figures-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}