{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_4_6.flake = false;
  inputs.src-nimqml-0_4_6.type = "github";
  inputs.src-nimqml-0_4_6.owner = "filcuc";
  inputs.src-nimqml-0_4_6.repo = "nimqml";
  inputs.src-nimqml-0_4_6.ref = "refs/tags/0.4.6";
  
  outputs = { self, nixpkgs, src-nimqml-0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}