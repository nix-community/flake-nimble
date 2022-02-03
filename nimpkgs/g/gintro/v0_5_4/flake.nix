{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_5_4.flake = false;
  inputs.src-gintro-v0_5_4.type = "github";
  inputs.src-gintro-v0_5_4.owner = "stefansalewski";
  inputs.src-gintro-v0_5_4.repo = "gintro";
  inputs.src-gintro-v0_5_4.ref = "refs/tags/v0.5.4";
  
  outputs = { self, nixpkgs, src-gintro-v0_5_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_5_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_5_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}