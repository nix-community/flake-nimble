{
  description = ''blake2 - cryptographic hash function'';
  inputs.src-blake2-master.flake = false;
  inputs.src-blake2-master.type = "github";
  inputs.src-blake2-master.owner = "narimiran";
  inputs.src-blake2-master.repo = "blake2";
  inputs.src-blake2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-blake2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blake2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-blake2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}