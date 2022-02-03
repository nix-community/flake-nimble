{
  description = ''Text template processor, basic capabilities'';
  inputs.src-tmplpro-v0_1_2.flake = false;
  inputs.src-tmplpro-v0_1_2.type = "github";
  inputs.src-tmplpro-v0_1_2.owner = "mjfh";
  inputs.src-tmplpro-v0_1_2.repo = "nim-tmplpro";
  inputs.src-tmplpro-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-tmplpro-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tmplpro-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tmplpro-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}