{
  description = ''Bindings for the InterSense SDK'';
  inputs.src-isense-master.flake = false;
  inputs.src-isense-master.type = "github";
  inputs.src-isense-master.owner = "nimious";
  inputs.src-isense-master.repo = "isense";
  inputs.src-isense-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-isense-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}