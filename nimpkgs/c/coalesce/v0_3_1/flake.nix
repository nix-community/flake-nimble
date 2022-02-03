{
  description = ''A nil coalescing operator ?? for Nim'';
  inputs.src-coalesce-v0_3_1.flake = false;
  inputs.src-coalesce-v0_3_1.type = "github";
  inputs.src-coalesce-v0_3_1.owner = "piedar";
  inputs.src-coalesce-v0_3_1.repo = "coalesce";
  inputs.src-coalesce-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-coalesce-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coalesce-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coalesce-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}