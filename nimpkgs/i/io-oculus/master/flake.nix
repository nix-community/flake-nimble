{
  description = ''Obsolete - please use oculus instead!'';
  inputs.src-io-oculus-master.flake = false;
  inputs.src-io-oculus-master.type = "github";
  inputs.src-io-oculus-master.owner = "nimious";
  inputs.src-io-oculus-master.repo = "io-oculus";
  inputs.src-io-oculus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-io-oculus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-oculus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-io-oculus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}