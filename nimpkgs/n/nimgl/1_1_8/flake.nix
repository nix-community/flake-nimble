{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimgl-1_1_8.flake = false;
  inputs.src-nimgl-1_1_8.type = "github";
  inputs.src-nimgl-1_1_8.owner = "nimgl";
  inputs.src-nimgl-1_1_8.repo = "nimgl";
  inputs.src-nimgl-1_1_8.ref = "refs/tags/1.1.8";
  inputs.src-nimgl-1_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-1_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}