{
  description = ''JSON / Object mapper'';
  inputs.src-jsonob-master.flake = false;
  inputs.src-jsonob-master.type = "github";
  inputs.src-jsonob-master.owner = "cjxgm";
  inputs.src-jsonob-master.repo = "jsonob";
  inputs.src-jsonob-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jsonob-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsonob-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsonob-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}