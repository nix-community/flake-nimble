{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';
  inputs.src-c_alikes-master.flake = false;
  inputs.src-c_alikes-master.type = "github";
  inputs.src-c_alikes-master.owner = "ReneSac";
  inputs.src-c_alikes-master.repo = "c_alikes";
  inputs.src-c_alikes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-c_alikes-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c_alikes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-c_alikes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}