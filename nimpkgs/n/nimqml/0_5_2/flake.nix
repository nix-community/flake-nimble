{
  description = ''Qt Qml bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimqml-0_5_2.flake = false;
  inputs.src-nimqml-0_5_2.type = "github";
  inputs.src-nimqml-0_5_2.owner = "filcuc";
  inputs.src-nimqml-0_5_2.repo = "nimqml";
  inputs.src-nimqml-0_5_2.ref = "refs/tags/0.5.2";
  inputs.src-nimqml-0_5_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqml-0_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}