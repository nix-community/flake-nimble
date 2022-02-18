{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgl-1_1_7.flake = false;
  inputs.src-nimgl-1_1_7.type = "github";
  inputs.src-nimgl-1_1_7.owner = "nimgl";
  inputs.src-nimgl-1_1_7.repo = "nimgl";
  inputs.src-nimgl-1_1_7.ref = "refs/tags/1.1.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-1_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}