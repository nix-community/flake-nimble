{
  description = ''psutil is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network). Since 2018 maintained by Juan Carlos because was abandoned.'';
  inputs.src-psutil-master.flake = false;
  inputs.src-psutil-master.type = "github";
  inputs.src-psutil-master.owner = "juancarlospaco";
  inputs.src-psutil-master.repo = "psutil-nim";
  inputs.src-psutil-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-psutil-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-psutil-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-psutil-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}