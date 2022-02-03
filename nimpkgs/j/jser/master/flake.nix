{
  description = ''json de/serializer for tuples and more'';
  inputs.src-jser-master.flake = false;
  inputs.src-jser-master.type = "github";
  inputs.src-jser-master.owner = "niv";
  inputs.src-jser-master.repo = "jser.nim";
  inputs.src-jser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}