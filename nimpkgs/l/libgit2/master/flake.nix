{
  description = ''Libgit2 low level wrapper'';
  inputs.src-libgit2-master.flake = false;
  inputs.src-libgit2-master.type = "github";
  inputs.src-libgit2-master.owner = "barcharcraz";
  inputs.src-libgit2-master.repo = "libgit2-nim";
  inputs.src-libgit2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libgit2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libgit2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libgit2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}