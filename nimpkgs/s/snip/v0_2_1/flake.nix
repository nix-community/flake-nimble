{
  description = ''Text editor to speed up testing code snippets'';
  inputs.src-snip-v0_2_1.flake = false;
  inputs.src-snip-v0_2_1.type = "github";
  inputs.src-snip-v0_2_1.owner = "genotrance";
  inputs.src-snip-v0_2_1.repo = "snip";
  inputs.src-snip-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-snip-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snip-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snip-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}