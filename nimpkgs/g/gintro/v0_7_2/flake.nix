{
  description = ''High level GObject-Introspection based GTK3 bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gintro-v0_7_2.flake = false;
  inputs.src-gintro-v0_7_2.type = "github";
  inputs.src-gintro-v0_7_2.owner = "stefansalewski";
  inputs.src-gintro-v0_7_2.repo = "gintro";
  inputs.src-gintro-v0_7_2.ref = "refs/tags/v0.7.2";
  inputs.src-gintro-v0_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gintro-v0_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gintro-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gintro-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}