{
  description = ''UUIDs in pure Nim'';
  inputs.src-uuid4-v0_9_3.flake = false;
  inputs.src-uuid4-v0_9_3.type = "github";
  inputs.src-uuid4-v0_9_3.owner = "vtbassmatt";
  inputs.src-uuid4-v0_9_3.repo = "nim-uuid4";
  inputs.src-uuid4-v0_9_3.ref = "refs/tags/v0.9.3";
  
  outputs = { self, nixpkgs, src-uuid4-v0_9_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid4-v0_9_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuid4-v0_9_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}