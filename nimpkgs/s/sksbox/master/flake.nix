{
  description = ''A native-nim implementaton of the sBOX generic container format.'';
  inputs.src-sksbox-master.flake = false;
  inputs.src-sksbox-master.type = "github";
  inputs.src-sksbox-master.owner = "Skrylar";
  inputs.src-sksbox-master.repo = "sksbox";
  inputs.src-sksbox-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sksbox-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sksbox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sksbox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}