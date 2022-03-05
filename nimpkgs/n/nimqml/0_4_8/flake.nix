{
  description = ''Qt Qml bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimqml-0_4_8.flake = false;
  inputs.src-nimqml-0_4_8.type = "github";
  inputs.src-nimqml-0_4_8.owner = "filcuc";
  inputs.src-nimqml-0_4_8.repo = "nimqml";
  inputs.src-nimqml-0_4_8.ref = "refs/tags/0.4.8";
  inputs.src-nimqml-0_4_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqml-0_4_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}