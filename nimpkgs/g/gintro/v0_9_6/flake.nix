{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_9_6.flake = false;
  inputs.src-gintro-v0_9_6.type = "github";
  inputs.src-gintro-v0_9_6.owner = "stefansalewski";
  inputs.src-gintro-v0_9_6.repo = "gintro";
  inputs.src-gintro-v0_9_6.ref = "refs/tags/v0.9.6";
  
  outputs = { self, nixpkgs, src-gintro-v0_9_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_9_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_9_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}