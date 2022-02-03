{
  description = ''A new awesome nimble package'';
  inputs.src-rcedit-master.flake = false;
  inputs.src-rcedit-master.type = "github";
  inputs.src-rcedit-master.owner = "bung87";
  inputs.src-rcedit-master.repo = "rcedit";
  inputs.src-rcedit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rcedit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rcedit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rcedit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}