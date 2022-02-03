{
  description = ''Text template processor, basic capabilities'';
  inputs.src-tmplpro-master.flake = false;
  inputs.src-tmplpro-master.type = "github";
  inputs.src-tmplpro-master.owner = "mjfh";
  inputs.src-tmplpro-master.repo = "nim-tmplpro";
  inputs.src-tmplpro-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tmplpro-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tmplpro-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tmplpro-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}