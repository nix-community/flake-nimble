{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_7_4.flake = false;
  inputs.src-nimqml-0_7_4.type = "github";
  inputs.src-nimqml-0_7_4.owner = "filcuc";
  inputs.src-nimqml-0_7_4.repo = "nimqml";
  inputs.src-nimqml-0_7_4.ref = "refs/tags/0.7.4";
  
  outputs = { self, nixpkgs, src-nimqml-0_7_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_7_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_7_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}