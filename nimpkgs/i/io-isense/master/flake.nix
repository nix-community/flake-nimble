{
  description = ''Obsolete - please use isense instead!'';
  inputs.src-io-isense-master.flake = false;
  inputs.src-io-isense-master.type = "github";
  inputs.src-io-isense-master.owner = "nimious";
  inputs.src-io-isense-master.repo = "io-isense";
  inputs.src-io-isense-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-io-isense-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-isense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-io-isense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}