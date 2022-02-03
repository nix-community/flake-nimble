{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-master.flake = false;
  inputs.src-gintro-master.type = "github";
  inputs.src-gintro-master.owner = "stefansalewski";
  inputs.src-gintro-master.repo = "gintro";
  inputs.src-gintro-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gintro-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}