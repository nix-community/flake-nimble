{
  description = ''A comprehensive toolkit for all your testing needs'';
  inputs.src-testutils-0_0_2.flake = false;
  inputs.src-testutils-0_0_2.type = "github";
  inputs.src-testutils-0_0_2.owner = "status-im";
  inputs.src-testutils-0_0_2.repo = "nim-testutils";
  inputs.src-testutils-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, src-testutils-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-testutils-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}