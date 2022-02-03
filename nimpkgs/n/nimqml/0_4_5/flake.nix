{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_4_5.flake = false;
  inputs.src-nimqml-0_4_5.type = "github";
  inputs.src-nimqml-0_4_5.owner = "filcuc";
  inputs.src-nimqml-0_4_5.repo = "nimqml";
  inputs.src-nimqml-0_4_5.ref = "refs/tags/0.4.5";
  
  outputs = { self, nixpkgs, src-nimqml-0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}