{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-c_alikes-master.flake = false;
  inputs.src-c_alikes-master.type = "github";
  inputs.src-c_alikes-master.owner = "ReneSac";
  inputs.src-c_alikes-master.repo = "c_alikes";
  inputs.src-c_alikes-master.ref = "refs/heads/master";
  inputs.src-c_alikes-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-c_alikes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c_alikes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-c_alikes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}