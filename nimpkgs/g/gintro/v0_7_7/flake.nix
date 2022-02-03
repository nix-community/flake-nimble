{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_7_7.flake = false;
  inputs.src-gintro-v0_7_7.type = "github";
  inputs.src-gintro-v0_7_7.owner = "stefansalewski";
  inputs.src-gintro-v0_7_7.repo = "gintro";
  inputs.src-gintro-v0_7_7.ref = "refs/tags/v0.7.7";
  
  outputs = { self, nixpkgs, src-gintro-v0_7_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_7_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_7_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}