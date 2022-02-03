{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_17.flake = false;
  inputs.src-gintro-v0_4_17.type = "github";
  inputs.src-gintro-v0_4_17.owner = "stefansalewski";
  inputs.src-gintro-v0_4_17.repo = "gintro";
  inputs.src-gintro-v0_4_17.ref = "refs/tags/v0.4.17";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}