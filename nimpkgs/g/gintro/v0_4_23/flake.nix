{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_23.flake = false;
  inputs.src-gintro-v0_4_23.type = "github";
  inputs.src-gintro-v0_4_23.owner = "stefansalewski";
  inputs.src-gintro-v0_4_23.repo = "gintro";
  inputs.src-gintro-v0_4_23.ref = "refs/tags/v0.4.23";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_23, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_23;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_23"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}