{
  description = ''libipset wrapper for Nim'';
  inputs.src-libipset-master.flake = false;
  inputs.src-libipset-master.type = "github";
  inputs.src-libipset-master.owner = "ba0f3";
  inputs.src-libipset-master.repo = "libipset.nim";
  inputs.src-libipset-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libipset-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libipset-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libipset-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}