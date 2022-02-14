{
  description = ''UUIDs in pure Nim'';
  inputs.src-uuid4-v0_9_0.flake = false;
  inputs.src-uuid4-v0_9_0.type = "github";
  inputs.src-uuid4-v0_9_0.owner = "vtbassmatt";
  inputs.src-uuid4-v0_9_0.repo = "nim-uuid4";
  inputs.src-uuid4-v0_9_0.ref = "refs/tags/v0.9.0";
  
  outputs = { self, nixpkgs, src-uuid4-v0_9_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid4-v0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuid4-v0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}