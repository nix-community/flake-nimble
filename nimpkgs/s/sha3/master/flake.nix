{
  description = ''sha3 - cryptographic hash function'';
  inputs.src-sha3-master.flake = false;
  inputs.src-sha3-master.type = "github";
  inputs.src-sha3-master.owner = "narimiran";
  inputs.src-sha3-master.repo = "sha3";
  inputs.src-sha3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sha3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sha3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}