{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_7_0.flake = false;
  inputs.src-nimqml-0_7_0.type = "github";
  inputs.src-nimqml-0_7_0.owner = "filcuc";
  inputs.src-nimqml-0_7_0.repo = "nimqml";
  inputs.src-nimqml-0_7_0.ref = "refs/tags/0.7.0";
  
  outputs = { self, nixpkgs, src-nimqml-0_7_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}