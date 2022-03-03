{
  description = ''psutil is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network). Since 2018 maintained by Juan Carlos because was abandoned.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-psutil-master.flake = false;
  inputs.src-psutil-master.type = "github";
  inputs.src-psutil-master.owner = "juancarlospaco";
  inputs.src-psutil-master.repo = "psutil-nim";
  inputs.src-psutil-master.ref = "refs/heads/master";
  inputs.src-psutil-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-psutil-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-psutil-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-psutil-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}