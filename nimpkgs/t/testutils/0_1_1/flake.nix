{
  description = ''A comprehensive toolkit for all your testing needs'';
  inputs.src-testutils-0_1_1.flake = false;
  inputs.src-testutils-0_1_1.type = "github";
  inputs.src-testutils-0_1_1.owner = "status-im";
  inputs.src-testutils-0_1_1.repo = "nim-testutils";
  inputs.src-testutils-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-testutils-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-testutils-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}