{
  description = ''Text template processor, basic capabilities'';
  inputs.src-tmplpro-unstable.flake = false;
  inputs.src-tmplpro-unstable.type = "github";
  inputs.src-tmplpro-unstable.owner = "mjfh";
  inputs.src-tmplpro-unstable.repo = "nim-tmplpro";
  inputs.src-tmplpro-unstable.ref = "refs/heads/unstable";
  
  outputs = { self, nixpkgs, src-tmplpro-unstable, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tmplpro-unstable;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tmplpro-unstable"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}