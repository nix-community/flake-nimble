{
  description = ''Sequoia PGP wrapper for Nim'';
  inputs.src-sequoia-master.flake = false;
  inputs.src-sequoia-master.type = "github";
  inputs.src-sequoia-master.owner = "ba0f3";
  inputs.src-sequoia-master.repo = "sequoia.nim";
  inputs.src-sequoia-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sequoia-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequoia-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sequoia-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}