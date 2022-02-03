{
  description = ''libipset wrapper for Nim'';
  inputs.src-libipset-0_0_1.flake = false;
  inputs.src-libipset-0_0_1.type = "github";
  inputs.src-libipset-0_0_1.owner = "ba0f3";
  inputs.src-libipset-0_0_1.repo = "libipset.nim";
  inputs.src-libipset-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-libipset-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libipset-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libipset-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}