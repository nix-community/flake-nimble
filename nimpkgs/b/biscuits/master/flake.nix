{
  description = ''better cookie handling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-biscuits-master.flake = false;
  inputs.src-biscuits-master.type = "github";
  inputs.src-biscuits-master.owner = "achesak";
  inputs.src-biscuits-master.repo = "nim-biscuits";
  inputs.src-biscuits-master.ref = "refs/heads/master";
  inputs.src-biscuits-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-biscuits-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biscuits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-biscuits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}