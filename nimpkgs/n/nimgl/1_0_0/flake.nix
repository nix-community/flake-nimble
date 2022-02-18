{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgl-1_0_0.flake = false;
  inputs.src-nimgl-1_0_0.type = "github";
  inputs.src-nimgl-1_0_0.owner = "nimgl";
  inputs.src-nimgl-1_0_0.repo = "nimgl";
  inputs.src-nimgl-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}