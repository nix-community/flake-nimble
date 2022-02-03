{
  description = ''High level GObject-Introspection based GTK3 bindings'';
  inputs.src-gintro-v0_4_16.flake = false;
  inputs.src-gintro-v0_4_16.type = "github";
  inputs.src-gintro-v0_4_16.owner = "stefansalewski";
  inputs.src-gintro-v0_4_16.repo = "gintro";
  inputs.src-gintro-v0_4_16.ref = "refs/tags/v0.4.16";
  
  outputs = { self, nixpkgs, src-gintro-v0_4_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_4_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gintro-v0_4_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}