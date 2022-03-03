{
  description = ''C Tox core wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-toxcore-master.flake = false;
  inputs.src-toxcore-master.type = "other";
  inputs.src-toxcore-master.owner = "~ehmry";
  inputs.src-toxcore-master.repo = "nim_tox";
  inputs.src-toxcore-master.ref = "refs/heads/master";
  inputs.src-toxcore-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-toxcore-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toxcore-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-toxcore-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}