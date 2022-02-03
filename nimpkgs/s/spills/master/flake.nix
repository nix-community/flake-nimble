{
  description = ''Disk-based sequences'';
  inputs.src-spills-master.flake = false;
  inputs.src-spills-master.type = "github";
  inputs.src-spills-master.owner = "andreaferretti";
  inputs.src-spills-master.repo = "spills";
  inputs.src-spills-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-spills-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spills-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spills-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}