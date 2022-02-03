{
  description = ''A FUSE binding for Nim'';
  inputs.src-fuse-master.flake = false;
  inputs.src-fuse-master.type = "github";
  inputs.src-fuse-master.owner = "akiradeveloper";
  inputs.src-fuse-master.repo = "nim-fuse";
  inputs.src-fuse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fuse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fuse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fuse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}