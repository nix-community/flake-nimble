{
  description = ''psutil is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network). Since 2018 maintained by Juan Carlos because was abandoned.'';
  inputs."psutil-master".url = "path:./master";
  
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}