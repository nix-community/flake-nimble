{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_7_3.flake = false;
  inputs.src-nimqml-0_7_3.type = "github";
  inputs.src-nimqml-0_7_3.owner = "filcuc";
  inputs.src-nimqml-0_7_3.repo = "nimqml";
  inputs.src-nimqml-0_7_3.ref = "refs/tags/0.7.3";
  
  outputs = { self, nixpkgs, src-nimqml-0_7_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_7_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_7_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}