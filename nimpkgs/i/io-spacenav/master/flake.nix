{
  description = ''Obsolete - please use spacenav instead!'';
  inputs.src-io-spacenav-master.flake = false;
  inputs.src-io-spacenav-master.type = "github";
  inputs.src-io-spacenav-master.owner = "nimious";
  inputs.src-io-spacenav-master.repo = "io-spacenav";
  inputs.src-io-spacenav-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-io-spacenav-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-spacenav-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-io-spacenav-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}