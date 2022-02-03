{
  description = ''Sequoia PGP wrapper for Nim'';
  inputs.src-sequoia-0_1_1.flake = false;
  inputs.src-sequoia-0_1_1.type = "github";
  inputs.src-sequoia-0_1_1.owner = "ba0f3";
  inputs.src-sequoia-0_1_1.repo = "sequoia.nim";
  inputs.src-sequoia-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-sequoia-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequoia-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sequoia-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}