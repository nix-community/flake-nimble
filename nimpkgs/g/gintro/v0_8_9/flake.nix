{
  description = ''High level GObject-Introspection based GTK3 bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gintro-v0_8_9.flake = false;
  inputs.src-gintro-v0_8_9.type = "github";
  inputs.src-gintro-v0_8_9.owner = "stefansalewski";
  inputs.src-gintro-v0_8_9.repo = "gintro";
  inputs.src-gintro-v0_8_9.ref = "refs/tags/v0.8.9";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gintro-v0_8_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_8_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gintro-v0_8_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}