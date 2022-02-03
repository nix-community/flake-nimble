{
  description = ''Implementation of JSON5.'';
  inputs.src-samson-master.flake = false;
  inputs.src-samson-master.type = "github";
  inputs.src-samson-master.owner = "GULPF";
  inputs.src-samson-master.repo = "samson";
  inputs.src-samson-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-samson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-samson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-samson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}