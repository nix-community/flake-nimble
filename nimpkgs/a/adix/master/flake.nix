{
  description = ''An Adaptive Index Library For Nim'';
  inputs.src-adix-master.flake = false;
  inputs.src-adix-master.type = "github";
  inputs.src-adix-master.owner = "c-blake";
  inputs.src-adix-master.repo = "adix";
  inputs.src-adix-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-adix-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-adix-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-adix-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}