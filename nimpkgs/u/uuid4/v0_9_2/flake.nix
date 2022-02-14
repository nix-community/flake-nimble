{
  description = ''UUIDs in pure Nim'';
  inputs.src-uuid4-v0_9_2.flake = false;
  inputs.src-uuid4-v0_9_2.type = "github";
  inputs.src-uuid4-v0_9_2.owner = "vtbassmatt";
  inputs.src-uuid4-v0_9_2.repo = "nim-uuid4";
  inputs.src-uuid4-v0_9_2.ref = "refs/tags/v0.9.2";
  
  outputs = { self, nixpkgs, src-uuid4-v0_9_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid4-v0_9_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuid4-v0_9_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}