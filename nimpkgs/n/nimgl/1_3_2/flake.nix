{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgl-1_3_2.flake = false;
  inputs.src-nimgl-1_3_2.type = "github";
  inputs.src-nimgl-1_3_2.owner = "nimgl";
  inputs.src-nimgl-1_3_2.repo = "nimgl";
  inputs.src-nimgl-1_3_2.ref = "refs/tags/1.3.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-1_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}