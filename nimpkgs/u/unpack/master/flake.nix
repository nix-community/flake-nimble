{
  description = ''Array/Sequence/Object destructuring/unpacking macro'';
  inputs.src-unpack-master.flake = false;
  inputs.src-unpack-master.type = "github";
  inputs.src-unpack-master.owner = "technicallyagd";
  inputs.src-unpack-master.repo = "unpack";
  inputs.src-unpack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unpack-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}