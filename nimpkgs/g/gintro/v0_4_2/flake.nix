{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_2.flake = false;
  inputs.src-gintro-v0_4_2.type = "github";
  inputs.src-gintro-v0_4_2.owner = "stefansalewski";
  inputs.src-gintro-v0_4_2.repo = "gintro";
  inputs.src-gintro-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}