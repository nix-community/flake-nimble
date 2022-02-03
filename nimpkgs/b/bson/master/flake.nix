{
  description = ''BSON Binary JSON Serialization'';
  inputs.src-bson-master.flake = false;
  inputs.src-bson-master.type = "github";
  inputs.src-bson-master.owner = "JohnAD";
  inputs.src-bson-master.repo = "bson";
  inputs.src-bson-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}