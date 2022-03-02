{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimgl-1_1_10.flake = false;
  inputs.src-nimgl-1_1_10.type = "github";
  inputs.src-nimgl-1_1_10.owner = "nimgl";
  inputs.src-nimgl-1_1_10.repo = "nimgl";
  inputs.src-nimgl-1_1_10.ref = "refs/tags/1.1.10";
  inputs.src-nimgl-1_1_10.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-1_1_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}