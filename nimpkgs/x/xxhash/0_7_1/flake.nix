{
  description = ''xxhash wrapper for Nim'';
  inputs.src-xxhash-0_7_1.flake = false;
  inputs.src-xxhash-0_7_1.type = "github";
  inputs.src-xxhash-0_7_1.owner = "OpenSystemsLab";
  inputs.src-xxhash-0_7_1.repo = "xxhash.nim";
  inputs.src-xxhash-0_7_1.ref = "refs/tags/0.7.1";
  
  outputs = { self, nixpkgs, src-xxhash-0_7_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xxhash-0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xxhash-0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}