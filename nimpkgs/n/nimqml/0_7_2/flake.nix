{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_7_2.flake = false;
  inputs.src-nimqml-0_7_2.type = "github";
  inputs.src-nimqml-0_7_2.owner = "filcuc";
  inputs.src-nimqml-0_7_2.repo = "nimqml";
  inputs.src-nimqml-0_7_2.ref = "refs/tags/0.7.2";
  
  outputs = { self, nixpkgs, src-nimqml-0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}