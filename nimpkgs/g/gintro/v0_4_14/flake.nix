{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_14.flake = false;
  inputs.src-gintro-v0_4_14.type = "github";
  inputs.src-gintro-v0_4_14.owner = "stefansalewski";
  inputs.src-gintro-v0_4_14.repo = "gintro";
  inputs.src-gintro-v0_4_14.ref = "refs/tags/v0.4.14";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}