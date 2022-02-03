{
  description = ''A nil coalescing operator ?? for Nim'';
  inputs.src-coalesce-v0_2_0.flake = false;
  inputs.src-coalesce-v0_2_0.type = "github";
  inputs.src-coalesce-v0_2_0.owner = "piedar";
  inputs.src-coalesce-v0_2_0.repo = "coalesce";
  inputs.src-coalesce-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-coalesce-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coalesce-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coalesce-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}