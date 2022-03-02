{
  description = ''Auto-generate a Python module that wraps a Nim module.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pymod-master.flake = false;
  inputs.src-pymod-master.type = "github";
  inputs.src-pymod-master.owner = "jboy";
  inputs.src-pymod-master.repo = "nim-pymod";
  inputs.src-pymod-master.ref = "refs/heads/master";
  inputs.src-pymod-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pymod-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pymod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pymod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}