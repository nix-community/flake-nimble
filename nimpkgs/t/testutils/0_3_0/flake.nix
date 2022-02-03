{
  description = ''A comprehensive toolkit for all your testing needs'';
  inputs.src-testutils-0_3_0.flake = false;
  inputs.src-testutils-0_3_0.type = "github";
  inputs.src-testutils-0_3_0.owner = "status-im";
  inputs.src-testutils-0_3_0.repo = "nim-testutils";
  inputs.src-testutils-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-testutils-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-testutils-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}