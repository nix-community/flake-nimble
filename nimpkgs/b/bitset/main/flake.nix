{
  description = ''A pure nim version of C++'s std::bitset'';
  inputs.src-bitset-main.flake = false;
  inputs.src-bitset-main.type = "github";
  inputs.src-bitset-main.owner = "joryschossau";
  inputs.src-bitset-main.repo = "bitset";
  inputs.src-bitset-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-bitset-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitset-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitset-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}