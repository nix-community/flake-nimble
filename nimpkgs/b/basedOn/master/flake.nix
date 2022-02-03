{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';
  inputs.src-basedOn-master.flake = false;
  inputs.src-basedOn-master.type = "github";
  inputs.src-basedOn-master.owner = "KaceCottam";
  inputs.src-basedOn-master.repo = "basedOn";
  inputs.src-basedOn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-basedOn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-basedOn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-basedOn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}