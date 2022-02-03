{
  description = ''Nim modules for access to system Bluetooth resources.'';
  inputs.src-nimbluez-master.flake = false;
  inputs.src-nimbluez-master.type = "github";
  inputs.src-nimbluez-master.owner = "Electric-Blue";
  inputs.src-nimbluez-master.repo = "NimBluez";
  inputs.src-nimbluez-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimbluez-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbluez-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbluez-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}