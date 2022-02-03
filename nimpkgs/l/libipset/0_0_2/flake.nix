{
  description = ''libipset wrapper for Nim'';
  inputs.src-libipset-0_0_2.flake = false;
  inputs.src-libipset-0_0_2.type = "github";
  inputs.src-libipset-0_0_2.owner = "ba0f3";
  inputs.src-libipset-0_0_2.repo = "libipset.nim";
  inputs.src-libipset-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, src-libipset-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libipset-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libipset-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}