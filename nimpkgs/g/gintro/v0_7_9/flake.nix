{
  description = ''High level GObject-Introspection based GTK3 bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gintro-v0_7_9.flake = false;
  inputs.src-gintro-v0_7_9.type = "github";
  inputs.src-gintro-v0_7_9.owner = "stefansalewski";
  inputs.src-gintro-v0_7_9.repo = "gintro";
  inputs.src-gintro-v0_7_9.ref = "refs/tags/v0.7.9";
  inputs.src-gintro-v0_7_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gintro-v0_7_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_7_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gintro-v0_7_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}