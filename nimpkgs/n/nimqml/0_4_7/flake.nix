{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_4_7.flake = false;
  inputs.src-nimqml-0_4_7.type = "github";
  inputs.src-nimqml-0_4_7.owner = "filcuc";
  inputs.src-nimqml-0_4_7.repo = "nimqml";
  inputs.src-nimqml-0_4_7.ref = "refs/tags/0.4.7";
  
  outputs = { self, nixpkgs, src-nimqml-0_4_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}