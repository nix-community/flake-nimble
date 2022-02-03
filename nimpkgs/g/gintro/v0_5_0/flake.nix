{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_5_0.flake = false;
  inputs.src-gintro-v0_5_0.type = "github";
  inputs.src-gintro-v0_5_0.owner = "stefansalewski";
  inputs.src-gintro-v0_5_0.repo = "gintro";
  inputs.src-gintro-v0_5_0.ref = "refs/tags/v0.5.0";
  
  outputs = { self, nixpkgs, src-gintro-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}