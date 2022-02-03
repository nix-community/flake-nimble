{
  description = ''Text editor to speed up testing code snippets'';
  inputs.src-snip-master.flake = false;
  inputs.src-snip-master.type = "github";
  inputs.src-snip-master.owner = "genotrance";
  inputs.src-snip-master.repo = "snip";
  inputs.src-snip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-snip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-snip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-snip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}