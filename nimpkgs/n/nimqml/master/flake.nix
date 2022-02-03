{
  description = ''Qt Qml bindings'';
  inputs.src-nimqml-master.flake = false;
  inputs.src-nimqml-master.type = "github";
  inputs.src-nimqml-master.owner = "filcuc";
  inputs.src-nimqml-master.repo = "nimqml";
  inputs.src-nimqml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimqml-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimqml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}