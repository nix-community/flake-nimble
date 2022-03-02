{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-qt5_qtsql-1_0_2.flake = false;
  inputs.src-qt5_qtsql-1_0_2.type = "github";
  inputs.src-qt5_qtsql-1_0_2.owner = "philip-wernersbach";
  inputs.src-qt5_qtsql-1_0_2.repo = "nim-qt5_qtsql";
  inputs.src-qt5_qtsql-1_0_2.ref = "refs/tags/1.0.2";
  inputs.src-qt5_qtsql-1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qt5_qtsql-1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qt5_qtsql-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qt5_qtsql-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}