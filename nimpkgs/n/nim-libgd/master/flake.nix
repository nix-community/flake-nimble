{
  description = ''Nim Wrapper for LibGD 2.x'';
  inputs.src-nim-libgd-master.flake = false;
  inputs.src-nim-libgd-master.type = "github";
  inputs.src-nim-libgd-master.owner = "mrhdias";
  inputs.src-nim-libgd-master.repo = "nim-libgd";
  inputs.src-nim-libgd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim-libgd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim-libgd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim-libgd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}