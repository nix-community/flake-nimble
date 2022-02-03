{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';
  inputs.src-qt5_qtsql-1_0_2.flake = false;
  inputs.src-qt5_qtsql-1_0_2.type = "github";
  inputs.src-qt5_qtsql-1_0_2.owner = "philip-wernersbach";
  inputs.src-qt5_qtsql-1_0_2.repo = "nim-qt5_qtsql";
  inputs.src-qt5_qtsql-1_0_2.ref = "refs/tags/1.0.2";
  
  outputs = { self, nixpkgs, src-qt5_qtsql-1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qt5_qtsql-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qt5_qtsql-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}