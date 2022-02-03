{
  description = ''xxhash wrapper for Nim'';
  inputs.src-xxhash-0_9_0.flake = false;
  inputs.src-xxhash-0_9_0.type = "github";
  inputs.src-xxhash-0_9_0.owner = "OpenSystemsLab";
  inputs.src-xxhash-0_9_0.repo = "xxhash.nim";
  inputs.src-xxhash-0_9_0.ref = "refs/tags/0.9.0";
  
  outputs = { self, nixpkgs, src-xxhash-0_9_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xxhash-0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xxhash-0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}