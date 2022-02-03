{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-0_4_8.flake = false;
  inputs.src-nimqml-0_4_8.type = "github";
  inputs.src-nimqml-0_4_8.owner = "filcuc";
  inputs.src-nimqml-0_4_8.repo = "nimqml";
  inputs.src-nimqml-0_4_8.ref = "refs/tags/0.4.8";
  
  outputs = { self, nixpkgs, src-nimqml-0_4_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}