{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgl-0_3_6.flake = false;
  inputs.src-nimgl-0_3_6.type = "github";
  inputs.src-nimgl-0_3_6.owner = "nimgl";
  inputs.src-nimgl-0_3_6.repo = "nimgl";
  inputs.src-nimgl-0_3_6.ref = "refs/tags/0.3.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-0_3_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}