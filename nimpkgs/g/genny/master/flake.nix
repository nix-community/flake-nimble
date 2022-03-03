{
  description = ''Generate a shared library and bindings for many languages.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genny-master.flake = false;
  inputs.src-genny-master.type = "github";
  inputs.src-genny-master.owner = "treeform";
  inputs.src-genny-master.repo = "genny";
  inputs.src-genny-master.ref = "refs/heads/master";
  inputs.src-genny-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genny-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genny-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genny-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}