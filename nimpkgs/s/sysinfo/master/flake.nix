{
  description = ''Cross platform system information.'';
  inputs.src-sysinfo-master.flake = false;
  inputs.src-sysinfo-master.type = "github";
  inputs.src-sysinfo-master.owner = "treeform";
  inputs.src-sysinfo-master.repo = "sysinfo";
  inputs.src-sysinfo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sysinfo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sysinfo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sysinfo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}