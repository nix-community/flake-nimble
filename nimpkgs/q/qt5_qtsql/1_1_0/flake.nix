{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';
  inputs.src-qt5_qtsql-1_1_0.flake = false;
  inputs.src-qt5_qtsql-1_1_0.type = "github";
  inputs.src-qt5_qtsql-1_1_0.owner = "philip-wernersbach";
  inputs.src-qt5_qtsql-1_1_0.repo = "nim-qt5_qtsql";
  inputs.src-qt5_qtsql-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-qt5_qtsql-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qt5_qtsql-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qt5_qtsql-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}