{
  description = ''Api Calls for Ford vehicles equipped with the fordpass app.'';
  inputs.src-ffpass-master.flake = false;
  inputs.src-ffpass-master.type = "github";
  inputs.src-ffpass-master.owner = "bunkford";
  inputs.src-ffpass-master.repo = "ffpass";
  inputs.src-ffpass-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ffpass-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ffpass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ffpass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}