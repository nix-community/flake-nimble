{
  description = ''Python-like 'struct' for Nim'';
  inputs.src-struct-master.flake = false;
  inputs.src-struct-master.type = "github";
  inputs.src-struct-master.owner = "OpenSystemsLab";
  inputs.src-struct-master.repo = "struct.nim";
  inputs.src-struct-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-struct-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-struct-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}