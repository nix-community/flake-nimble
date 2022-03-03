{
  description = ''basic monadic maybe type for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-maybe-master.flake = false;
  inputs.src-maybe-master.type = "github";
  inputs.src-maybe-master.owner = "superfunc";
  inputs.src-maybe-master.repo = "maybe";
  inputs.src-maybe-master.ref = "refs/heads/master";
  inputs.src-maybe-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-maybe-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maybe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-maybe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}