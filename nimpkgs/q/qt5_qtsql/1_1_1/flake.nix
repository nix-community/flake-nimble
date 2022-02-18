{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-qt5_qtsql-1_1_1.flake = false;
  inputs.src-qt5_qtsql-1_1_1.type = "github";
  inputs.src-qt5_qtsql-1_1_1.owner = "philip-wernersbach";
  inputs.src-qt5_qtsql-1_1_1.repo = "nim-qt5_qtsql";
  inputs.src-qt5_qtsql-1_1_1.ref = "refs/tags/1.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qt5_qtsql-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qt5_qtsql-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qt5_qtsql-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}