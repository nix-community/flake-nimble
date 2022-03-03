{
  description = ''Old Win API library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-oldwinapi-master.flake = false;
  inputs.src-oldwinapi-master.type = "github";
  inputs.src-oldwinapi-master.owner = "nim-lang";
  inputs.src-oldwinapi-master.repo = "oldwinapi";
  inputs.src-oldwinapi-master.ref = "refs/heads/master";
  inputs.src-oldwinapi-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oldwinapi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oldwinapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oldwinapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}