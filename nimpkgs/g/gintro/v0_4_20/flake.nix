{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_20.flake = false;
  inputs.src-gintro-v0_4_20.type = "github";
  inputs.src-gintro-v0_4_20.owner = "stefansalewski";
  inputs.src-gintro-v0_4_20.repo = "gintro";
  inputs.src-gintro-v0_4_20.ref = "refs/tags/v0.4.20";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_20, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}