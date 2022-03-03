{
  description = ''Nim's Windows API and COM Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-winim-3_7_2.flake = false;
  inputs.src-winim-3_7_2.type = "github";
  inputs.src-winim-3_7_2.owner = "khchen";
  inputs.src-winim-3_7_2.repo = "winim";
  inputs.src-winim-3_7_2.ref = "refs/tags/3.7.2";
  inputs.src-winim-3_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-winim-3_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winim-3_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-winim-3_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}