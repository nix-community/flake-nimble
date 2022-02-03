{
  description = ''Text editor to speed up testing code snippets'';
  inputs.src-snip-v0_2_2.flake = false;
  inputs.src-snip-v0_2_2.type = "github";
  inputs.src-snip-v0_2_2.owner = "genotrance";
  inputs.src-snip-v0_2_2.repo = "snip";
  inputs.src-snip-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-snip-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snip-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snip-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}