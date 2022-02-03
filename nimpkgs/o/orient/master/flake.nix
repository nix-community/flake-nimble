{
  description = ''OrientDB driver written in pure Nim, uses the OrientDB 2.0 Binary Protocol with Binary Serialization.'';
  inputs.src-orient-master.flake = false;
  inputs.src-orient-master.type = "github";
  inputs.src-orient-master.owner = "philip-wernersbach";
  inputs.src-orient-master.repo = "nim-orient";
  inputs.src-orient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-orient-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-orient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-orient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}