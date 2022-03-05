{
  description = ''Qt Qml bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimqml-0_7_6.flake = false;
  inputs.src-nimqml-0_7_6.type = "github";
  inputs.src-nimqml-0_7_6.owner = "filcuc";
  inputs.src-nimqml-0_7_6.repo = "nimqml";
  inputs.src-nimqml-0_7_6.ref = "refs/tags/0.7.6";
  inputs.src-nimqml-0_7_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqml-0_7_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_7_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_7_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}