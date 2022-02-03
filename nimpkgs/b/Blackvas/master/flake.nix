{
  description = ''declarative UI framework for building Canvas'';
  inputs.src-Blackvas-master.flake = false;
  inputs.src-Blackvas-master.type = "github";
  inputs.src-Blackvas-master.owner = "momeemt";
  inputs.src-Blackvas-master.repo = "Blackvas";
  inputs.src-Blackvas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Blackvas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Blackvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Blackvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}