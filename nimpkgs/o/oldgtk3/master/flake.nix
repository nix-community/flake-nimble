{
  description = ''Low level bindings for GTK3 related libraries'';
  inputs.src-oldgtk3-master.flake = false;
  inputs.src-oldgtk3-master.type = "github";
  inputs.src-oldgtk3-master.owner = "stefansalewski";
  inputs.src-oldgtk3-master.repo = "oldgtk3";
  inputs.src-oldgtk3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-oldgtk3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oldgtk3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oldgtk3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}