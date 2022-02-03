{
  description = ''128-bit integers'';
  inputs.src-nint128-v0_2_0.flake = false;
  inputs.src-nint128-v0_2_0.type = "github";
  inputs.src-nint128-v0_2_0.owner = "rockcavera";
  inputs.src-nint128-v0_2_0.repo = "nim-nint128";
  inputs.src-nint128-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-nint128-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nint128-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nint128-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}