{
  description = ''Text editor to speed up testing code snippets'';
  inputs.src-snip-v0_2_3.flake = false;
  inputs.src-snip-v0_2_3.type = "github";
  inputs.src-snip-v0_2_3.owner = "genotrance";
  inputs.src-snip-v0_2_3.repo = "snip";
  inputs.src-snip-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-snip-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snip-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snip-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}