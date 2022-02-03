{
  description = ''A nil coalescing operator ?? for Nim'';
  inputs.src-coalesce-v0_3_2.flake = false;
  inputs.src-coalesce-v0_3_2.type = "github";
  inputs.src-coalesce-v0_3_2.owner = "piedar";
  inputs.src-coalesce-v0_3_2.repo = "coalesce";
  inputs.src-coalesce-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-coalesce-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coalesce-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coalesce-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}