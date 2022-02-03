{
  description = ''fast interval overlaps'';
  inputs.src-lapper-master.flake = false;
  inputs.src-lapper-master.type = "github";
  inputs.src-lapper-master.owner = "brentp";
  inputs.src-lapper-master.repo = "nim-lapper";
  inputs.src-lapper-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lapper-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lapper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lapper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}