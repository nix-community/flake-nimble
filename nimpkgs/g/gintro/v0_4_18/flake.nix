{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_18.flake = false;
  inputs.src-gintro-v0_4_18.type = "github";
  inputs.src-gintro-v0_4_18.owner = "stefansalewski";
  inputs.src-gintro-v0_4_18.repo = "gintro";
  inputs.src-gintro-v0_4_18.ref = "refs/tags/v0.4.18";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_18, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_18;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_18"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}