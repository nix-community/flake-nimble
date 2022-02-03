{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_11.flake = false;
  inputs.src-gintro-v0_4_11.type = "github";
  inputs.src-gintro-v0_4_11.owner = "stefansalewski";
  inputs.src-gintro-v0_4_11.repo = "gintro";
  inputs.src-gintro-v0_4_11.ref = "refs/tags/v0.4.11";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}