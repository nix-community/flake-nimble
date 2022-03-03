{
  description = ''Qt Qml bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimqml-0_7_4.flake = false;
  inputs.src-nimqml-0_7_4.type = "github";
  inputs.src-nimqml-0_7_4.owner = "filcuc";
  inputs.src-nimqml-0_7_4.repo = "nimqml";
  inputs.src-nimqml-0_7_4.ref = "refs/tags/0.7.4";
  inputs.src-nimqml-0_7_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqml-0_7_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_7_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_7_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}