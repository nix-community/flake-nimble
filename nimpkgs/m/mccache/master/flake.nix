{
  description = ''mccache package: in-memory caching'';
  inputs.src-mccache-master.flake = false;
  inputs.src-mccache-master.type = "github";
  inputs.src-mccache-master.owner = "abbeymart";
  inputs.src-mccache-master.repo = "mccache-nim";
  inputs.src-mccache-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mccache-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mccache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mccache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}